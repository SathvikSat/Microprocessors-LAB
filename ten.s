.intel_mnemonic
.intel_syntax noprefix
.include "exit_fn.sat"
.data

store:
	.ds 10

.text
.global _start
_start:	
		mov ecx, 10
		lea esi, store
		mov eax,1
	up:	mov [esi], eax
		inc esi
		loop up
		exit
