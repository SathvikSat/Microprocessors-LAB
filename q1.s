.intel_mnemonic
.intel_syntax noprefix

.data

.macro display addr, len
lea ecx, \addr
mov edx, \len

mov eax, 4
mov ebx, 1
int 0x80
.endm

msg0:
	.ascii "enter a y or N \n"
	.equ len0,.-msg0
	
msg1:
	.ascii "I am intrested\n"
	.equ len1,.-msg1

msg2: 
	.ascii "I am not\n"
	.equ len2,.-msg2

.macro read add, lent
lea ecx, \add
mov edx, \lent
mov eax, 3
mov ebx, 2
int 0x80
.endm

store_data: 
		.ds 10

.text
.global _start
_start:	
		display msg0, len0
		read store_data, 1
		mov eax, store_data
		cmp eax, 'y'
		jne go
		 display msg1, len1
		go: cmp eax, 'n'
		jne end			
		display msg2, len2
		
		end: mov eax, 1
			int 0x80
