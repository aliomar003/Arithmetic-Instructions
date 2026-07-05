section .text
global _start

_start:
    mov eax, [var1]
    neg eax
    imul eax, 10
    mov [result], eax

    mov eax, 1
    int 0x80

section .bss
result resd 1

section .data
var1 dd 5
