


.intel_mnemonic
.intel_syntax noprefix
.include "exit_fn.s"
.data
store_data:

	.ds 10
.text
.global _start
	_start: lea esi,store_data
	mov cx, 10 #count value
	mov  al,0xab
up:	mov  [esi],al
	inc esi
	loop up
			exit 

