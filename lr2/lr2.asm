.8086

.model small
.stack 100h

.data
input_str db "Enter the string: $"
input_word db "Enter the word: $"
str db 100 dup('$')
newline db 0Dh, 0Ah, '$'
number_k db 3
start_of_the_word dw ?
buff1   dw ?


.code

input_num proc
    mov ah, 1
    int 21h
    sub al, '0'  ;перевод аски симовла в число   
    mov number_k, al

    mov ah, 02h
    mov dx, 0Ah
    int 21h

    mov ah, 02h
    mov dx, 0Dh ;возврат коретки 
    int 21h

    ret
input_num endp

reverse_string proc
    push bp ;сохранение текущего значения базового указателя 
    mov bp, sp ;текущий -> базовый 
    mov si, [bp + 4]
    mov bx, start_of_the_word 
    mov cx, 100
    xor ax, ax
    xor dx, dx
loop1:
    mov dl, [si + bx]
    cmp dl, '$' ;сравнение с концом строки
    je end_loop  
    push dx
    inc bx
loop loop1

end_loop:
    sub bx, start_of_the_word
    mov cx, bx
    mov bx, start_of_the_word
    mov si, [bp + 4]

loop2:
    pop dx
    mov [si + bx ], dl
    inc bx
loop loop2

    pop bp
    ret 2
reverse_string endp

is_letter proc
    cmp al, 'A'
    jl not_letter
    cmp al, 'Z'
    jbe its_letter

    cmp al, 'a'
    jl not_letter
    cmp al, 'z'
    jbe its_letter ;меньше или равен

not_letter: 
        mov al, 0
        ret
its_letter:
        mov al, 1
        ret 
is_letter endp

find_k_word proc
    push bp
    mov bp, sp

    mov ch, number_k ; number of string to find 
    mov si, [bp + 4] ; entered string 
    mov bx, 0 ; index
    mov ah, 0 ; counter of words
    mov dh, 0 ; flag 

find_loop:
    mov al, [si + bx] 
    mov dl, al 
    call is_letter

    cmp al, 1
    je word_start

    mov dh, 0

continue:
    cmp ah, ch
    jne not_k_word

    mov di, bx
    pop bp
    ret 2

not_word_start:
    mov dh, 1
    inc ah
    jmp continue

word_start:
    cmp dh, 0
    je not_word_start

not_k_word:
    inc bx

    cmp dl, '$'
    jne find_loop

    mov di, 65h
    pop bp
    ret 2
    
find_k_word endp

start:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset input_str
    int 21h

    mov ah, 0Ah
    lea dx, str
    int 21h 

    xor ax, ax
    mov al, [str + 1]
    mov bx, offset str + 2
    add bx, ax
    mov al, '$'
    mov byte [bx - 1], al

    mov ah, 09h
    mov dx, offset newline
    int 21h 

    mov ah, 09h
    mov dx, offset input_word
    int 21h

    call input_num
    dec number_k

    push offset str + 2
    call find_k_word
    mov start_of_the_word, bx

    inc number_k
    push offset str + 2
    call find_k_word
    mov buff1, bx
    mov ax, start_of_the_word
    sub bx, ax
    mov buff1, bx
    
    push offset str + 2
    call reverse_string

    mov al, [str + 1]
    xor ah, ah
    sub ax, buff1
    mov bx, ax
    inc bx
    inc bx
    mov [str + bx], '$'
    
    mov ah, 09h
    mov dx, offset newline
    int 21h

        push offset str + 2
    call reverse_string

    mov ah, 09h
    lea dx, str + 2
    int 21h
    
    mov ax, 4C00h
    int 21h
end start

