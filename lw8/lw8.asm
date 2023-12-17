.186
.model tiny               
.code        
              
	org 100h    
    start:

        jmp main

        command_line_text              db 128 dup(0)
        command_line_buffer            db 3 dup('$')

        arguments_count                db 0 ;счетчик аргументов в командной строке нужно для задания времени 

        message_arguments_error        db "Wrong arguments. Try: 'lw8.com hour min sec $"
        message_hour_error             db "Wrong time number. Hour is in range from 0 to 23$"
        message_min_sec_error          db "Wrong time number. Minutes and seconds are in range from 0 to 59$"
        message_overflow               db "Overflow detected!$"
        message_not_digit              db "There are not digits in your arguments!$"
        
        
        handler_status                   db 0     ;0 - off, 1 - on

        ;time
        hour               db 0 
        min                db 0
        sec                db 0
        
        int_old_handler dd 0


handler PROC
    pushf ;сохранение текущее состояние флагов 

    call cs:int_old_handler
    push ds
    push es
    push ax
    push bx
    push cx
    push dx
    push di

    push cs
    pop ds

    mov ah, 02h
    int 1Ah             ;доступ к текущему времни системы 

    cmp ch, hour       ; проверка на возможность включения
    jne stop_check
    cmp cl, min
    jne stop_check
    cmp dh, sec
    jne stop_check

    mov dl, handler_status          ;проверка текущего статуса по дефолту 0
    cmp dl, 0
    jne stop_check                      ;если текущий статус 1 прекращаем проверку

    ; выключение экрана
    mov ax, 0         ; установка видео режима(выключение экрана)
    int 10h

    jmp end_handler

stop_check:

    mov dl, handler_status
    cmp dl, 1
    jne end_handler

    mov dl, 0
    mov handler_status, 0       ;сбрасываем статус

end_handler:
    pop di
    pop dx
    pop cx
    pop bx
    pop ax
    pop es
    pop ds
    iret            ;завершение выполнения прерывания
    
handler ENDP   

output_string PROC
    push bp
    mov bp, sp

    mov ah, 09h
    mov dx, [bp + 4]
    int 21h

    pop bp
    ret 2
output_string ENDP


;перевод 16ричной сс в 10 
convert_to_hex PROC
    push bp
    mov bp, sp     ;[bp + 4] string_num
            
    push bx
    push si

    mov si, [bp + 4]  ;установка начала 16 строки 

    parse_loop:     ;цикл который переводит все 16 числа в 10

    xor bx, bx
    mov bl, [si]

    cmp bl, 24h     ;знак конца строки 
    je converted

    sub bl, 30h     ;вычитаем '0' и проверяем чтобы число было больше 0 и меньше 9
    cmp bl, 0
    jb handle_not_digit
    cmp bl, 9
    ja handle_not_digit

    push bx
    mov bx, 0Ah
    imul bx
    pop bx
    jo handle_overflow
    xor bh, bh
    add ax, bx
    jo handle_overflow 

    inc si
    jmp parse_loop

    converted:      ;если обноружен конец строки($)
    pop si
    pop bx
    pop bp
    ret 2

    handle_not_digit:
    mov ah, 09h
    lea dx, message_not_digit
    int 21h
    jmp exit
    
    handle_overflow:
    mov ah, 09h
    lea dx, message_overflow
    int 21h
    jmp exit
convert_to_hex ENDP


;так же переводит число с помощью процедуры выше
parse_element PROC
    push bp
    mov bp, sp  ;[bp + 4] - variable
    ;[bp + 6] - message error
                        
    push ax
    push bx

    parse_stop_time:
    cmp BYTE PTR es:[si], 0Dh       ;проверка на конец строки 
    je check
    cmp BYTE PTR es:[si], ' '       ;проверка на пробел
    je result_stop_time

    mov al, es:[si]
    mov [di + bx], al

    inc si
    inc bx
    jmp parse_stop_time

    check:
    cmp arguments_count, 2      ;проверка на количество аргументов 
    jne wrong_arguments

    result_stop_time:
    mov al, '$'         ;загружаем $
    mov [di + bx], al
    xor ax, ax
    push di
    call convert_to_hex

    push si
    mov si, [bp + 4]
    mov [si], ax
    pop si
    inc arguments_count
    jmp parsed

    wrong_arguments:
    lea dx, message_arguments_error
    push dx
    call output_string
    jmp exit

    parsed:
    pop bx
    pop ax
    pop bp
    ret 4
parse_element ENDP   

parse_time PROC         ;работа с командной строкой
    push bp
    mov bp, sp

    push ax
    push bx
    push cx
    push dx
    push si
    push di

    mov cl, es:[80h] ;CLA length
    add cx, 80h      ;last symbol
    mov si, 82h      ;first symbol
    lea di, command_line_buffer

    mov bx, 0   ;j = 0

    lea dx, message_hour_error
    push dx
    lea dx, hour
    push dx
    call parse_element

    inc si      ;i++
    mov bx, 0   ;j = 0

    lea dx, message_min_sec_error
    push dx
    lea dx, min
    push dx
    call parse_element

    inc si      ;i++
    mov bx, 0   ;j = 0

    lea dx, message_min_sec_error
    push dx
    lea dx, sec
    push dx
    call parse_element

    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    pop bp
                
    ret 
parse_time ENDP   

convert_hex_to_bcd PROC     ;переводим число в формат времени 
    push ax
    push bx
    push cx
    push dx
    push si

    mov cx, 3       ;часы минуты секунды 
    mov bl, 10      ;база в которую устанавливается каждное число

    lea si, hour

    convert_loop:
    xor ah, ah
    mov al, [si]
    div bl      ;al - чаcтное ah - остаток
    mov dl, al

    shl dl, 4

    add dl, ah
    mov [si], dl

    inc si
    loop convert_loop

    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    ret
convert_hex_to_bcd ENDP

set_handler PROC
    push ax
    push bx
    push dx

    cli                         ;запрет прерываний

    mov ah, 35h                 ;получаем адрес обработчика
    mov al, 1Ch                 ;номер прерывания
    int 21h                     ;bx = 0000:[AL * 4] - смещение обработчика es = 0000:[(AL*4) + 2] - сегментный адрес
    mov word ptr [offset int_old_handler], bx
    mov word ptr [offset int_old_handler + 2], es

    push ds
    pop es                      ;настройка регистра ds на данные резидентной программ

    mov ah, 25h                 ;функция замены обработчика
    mov al, 1Ch                 
    lea dx, handler
    int 21h

    sti                         ;разрешение прерываний

    pop dx
    pop bx
    pop ax
    ret
set_handler ENDP 

    main:
    call parse_time

    call convert_hex_to_bcd

    call set_handler

    mov ah, 31h     ;оставить программу резидентной ah, al код возврата 
    mov al, 0

    mov dx, (output_string - start + 100h) / 16 + 16 / 16

    int 21h

    exit:
    int 20h
end start