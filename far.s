.intel_mnemonic
.intel_syntax noprefix
.text
.global fact
 
 fact: 
	mov eax,0x01
	up: mul ecx	
	loop up
	ret
	
