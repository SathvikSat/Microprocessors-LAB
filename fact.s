
.intel_mnemonic
.intel_syntax noprefix

.data
	fac: 
		.ds 10

.text
.global _start
	_start: mov ecx, 0x05
			call fact
			mov fac, eax
			mov eax, 1			
			int 0x80
			


