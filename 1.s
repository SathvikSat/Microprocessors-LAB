
.include "exit_fn.s"

.intel_mnemonic
.intel_syntax noprefix
.data



.macro display address, length  
	lea ecx, \address
	mov edx,\length	
	mov eax,4
	mov ebx,1
	int 0x80
.endm

	msg1:
		.ascii "hello\n"
		.equ len1,.-msg1
	msg2:
		.ascii "good morning\n"
		.equ len2,.-msg2
	
	msg3:
		.ascii "microprocessor\n"
		.equ len3,.-msg3
.text
.global _start
	_start: display msg1,len1
		display msg2,len2
		display msg3,len3
			exit  


