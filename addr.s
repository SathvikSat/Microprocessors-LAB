


.intel_mnemonic
.intel_syntax noprefix
.include "exit_fn.s"
.data

.text
.global _start
	_start: mov al,0x12
			mov ax,0x1234
			mov eax,0x1234
			mov cl, 122
			mov bl,'5'
			mov dx, 0xab
			mov di, 0xef
			exit  


