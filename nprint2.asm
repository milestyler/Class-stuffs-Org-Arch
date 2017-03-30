global _start
_start:
 jmp short ender
 starter:
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx
    mov al, 0x4
    mov bl, 0x1
    pop ecx
    mov dl, slength
    int 0x80
    xor eax, eax
    mov al, 0x1
    xor ebx,ebx
    int 0x80
 ender:
    call starter
 message:
    db 'Tyler Miles'
 slength equ $-message