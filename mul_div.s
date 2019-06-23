.intel_mnemonic
.intel_syntax noprefix
.include "exit_fn.s"
.data
add:
	.word 10,30
.text
.global _start
_start:
		lea esi, add
		mov ax, [esi]
		mov bx, 2[esi]
		add  ax,bx
		mov 4[esi], ax

		mov ax, [esi]
		sbb ax,bx
		neg ax
		mov 6[esi],ax
		
		mov ax, [esi]
		mul bx
		mov 8[esi] ,ax
		
		mov ax, [esi]
		div bx
		mov 10[esi], ax

		mov ax, [esi]
		not ax
		mov 14[esi], ax
		exit

