section .text
global _start

_start:
    mov eax, [var1]
    imul eax, 2

    mov ebx, [var2]
    sub ebx, 3

    cdq
    idiv ebx

    mov [result], eax

    mov eax, 1
    int 0x80

section .bss
result resd 1

section .data
var1 dd 10
var2 dd 5
