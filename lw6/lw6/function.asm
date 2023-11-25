.model flat, c

.code

func PROC
    push ebp
    mov ebp, esp

    arr equ [ebp + 8]
    res equ [ebp + 12]

    mov esi, arr
    mov edi, res

    mov ebx, 0
    mov ecx, 0

    finit

main_cycle:
    cmp ecx, 10
    jge exit

    fld dword ptr [esi + ebx] ; �������� Xi

    test ecx, 1     ;�������� �� ������ 
    jnz even_index 

    ; �������� ������
    fsin
    fstp dword ptr [edi + ebx] ;���������� �������� � ����
    jmp next_iteration

even_index:
    ; ������ ������
    fcos
    fstp dword ptr [edi + ebx]

next_iteration:
    add ebx, 4
    inc ecx
    jmp main_cycle

exit:
    pop ebp
    ret
func ENDP

end
