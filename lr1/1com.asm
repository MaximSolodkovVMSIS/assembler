.model tiny
.code
org 100h
start:
mov ah, 9
mov dx, offset message
int 21h
mov ah, 4Ch
message db "Hello world", 07h, 0Dh, 0Ah, '$'
end start