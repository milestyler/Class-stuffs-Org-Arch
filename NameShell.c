#include <stdio.h>
#include <string.h>

unsigned char code[] = "/xeb/x19/x31/xc0/x31/xdb/x31/xd2/x31/xc9/xb0/x04/xb3/x01/x59/xb2/x0b/xcd/x80/x31/xc0/xb0/x01v31/xdb/xcd/x80/xe8/xe2/xff/xff/xff/x54/x79/x6c/x4d/x69/x6c/x65/x73";

main(){
    printf("Shellcode Length: %d\n", strlen(code));

    int (*ret)() = (int(*)())code;

    ret();
}