.model small
.stack 256
.186

.data
    hello_world db "Hello World. $"
    DATA_SEGMENT_SIZE equ 100h ;хранилище в 256 байт

.code

output_string PROC
    push bp
    mov bp, sp

    mov ah, 09h
    mov dx, [bp + 4]
    int 21h

    pop bp
    ret 2
output_string ENDP

run_exe PROC
    ; сохраняем регистры в стеке (pusha)
    push ax
    push bx
    push cx
    push dx
    push si
    push di

    mov ah, 09h ; Выводим сообщение
    lea dx, hello_world
    int 21h

    ; восстанавливаем регистры из стека (popa)
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax

    ret
run_exe ENDP

start:
    mov ah, 4Ah
    mov bx, ((DATA_SEGMENT_SIZE / 16) + 1) + 16 ;вычисление размер сегмента данных которые будут загружены, +16 байт для обеспечения достаточного пространства
    ;затем окгругление вверх до ближайшей границы сегмента(16 байт)
    int 21h

    mov ax, @data
    mov ds, ax

    xor bx, bx
    mov bl, es:[80h] ; CLA length
    add bx, 80h      ; last symbol
    mov si, 82h      ; first symbol

    xor cx, cx
    mov cx, 5 ; N

    repeat_run:
        ; выводим сообщение "Hello World"
        call run_exe

        ; задержка чтобы видеть вывод
        mov ah, 86h
        int 15h

        ; уменьшаем cx и проверяем на ноль
        loop repeat_run

exit:
    mov ax, 4C00h 
    int 21h

end start
