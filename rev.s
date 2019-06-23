.intel_mnemonic
.intel_syntax noprefix
.data
	str1:
	.ascii "sathvik"
	.equ len,.-str1

	str2:
	.ds 10

.text
.global _start
_start:
	mov cx, len	
	lea esi, str1
	lea edi, str2
	add esi,len
	dec esi
	cld
up:	movsb 
	sub esi, 2
	loop up
	mov eax, 0x01
	int 0x80
	


