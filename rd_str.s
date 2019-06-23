


.intel_mnemonic
.intel_syntax noprefix
.data

.include "exit_fn.s"


.macro read_data address,length  
	lea ecx, \address
	mov edx,\length	
	mov eax,3
	mov ebx,2
	int 0x80
.endm

.macro display address, length  
	lea ecx, \address
	mov edx,\length	
	mov eax,4
	mov ebx,1
	int 0x80
.endm


	msg1:
		.ascii "Enter num or char \n"
		.equ len1,.-msg1
	
	store_data:
		.ds 10


	msg2:
		.ascii "entered num or char \n"
		.equ len2,.-msg2
	
	msg3:
		.ascii "\n"
		
.text
.global _start
	_start: display msg1,len1
		read_data store_data,10
		display msg2,len2
		display store_data, 10
		
		display msg3,1
			exit  


