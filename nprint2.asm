global _start
section .text

  _start:
   jmp short end
   begin:
     xor eax, eax
     xor ebx, ebx
     xor ecx, ecx
     xor edx, edx

     mov al, 0x4
     mov bl, 0x1
     pop ecx
     mov dl, mlen
     int 0x80

     xor eax, eax
     mov al, 0x1
     xor ebx,ebx
     int 0x80

 end:
   call begin
   message: db "Tyler Miles"
    mlen equ $-message