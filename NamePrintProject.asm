;Assembly Hello World Modified to my name.
section	.text
	global _start
_start:
	mov	edx, len
	mov	ecx, msg
	mov	ebx, 1
	mov	eax, 4
	int	0x80
	mov	eax, 1
	int	0x80        
	
section	.data

msg	db	'Tyler Miles',0xa
len	equ	$ - msg