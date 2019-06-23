.intel_mnemonic
.intel_syntax noprefix
.data
arr1:
	.byte 1,2,3,4,5
even:
	.ds 10
odd:
	.ds 10



.text
.global _start
_start:
	
	mov ecx, 0x05
	lea esi, arr1
	lea edi, even
	lea	ebx, odd
	mov edx, 0x02
up: mov eax, esi
	div edx
	cmp eax, 0x00
	je down
	mov ebx, esi
	inc ebx
	jmp here
down: mov  edi, esi
	inc edi
	inc esi
here: loop up
mov eax, 0x01
int 0x80
