.intel_mnemonic
.intel_syntax noprefix
.data
	str1:
	.ascii "Sathvik"
	.equ len1,.-str1

	str2:
	.ascii "Setty"
	.equ len2,.-str2
	

	concat:
	.ds 20

.text
.global _start
_start:
		
		lea esi, str1
		lea edi, concat
		mov ecx, len1		
		cld
		rep movsb 


		lea esi, str2
		lea edi, concat
		add edi, len1
		rep movsb
		mov eax, 0x01
		int 0x80
	 
	
