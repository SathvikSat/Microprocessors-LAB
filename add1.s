.intel_mnemonic
.intel_syntax noprefix
.include "exit_fn.s"
.data
.text
.global _start
_start:

		mov ax, 0x1234
		mov bx, 0x5678
		sub ax,bx
not ax
		#sbb ah,bh
		#neg ax
		#not bx
			
	 

exit
