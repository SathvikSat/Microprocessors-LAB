.intel_mnemonic
.intel_syntax noprefix
.include "exit_fn.sat"



.global _start
_start:
mov al, 0x0a
mov bl, 0x0a
add al, bl
aaa 
	exit
