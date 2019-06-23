.intel_mnemonic 
.intel_syntax noprefix
.include "useful.info"
.data

ltable:
	.byte 0,1,4,9,0x16,0x25,0x36,0x49,0x64,0x81
store_data:
		.ds 2
.text
.global _start
_start: ebx, ltable
		mov al,5
		xlat
		mov bl,al
		and al, 0xf0
		ror al,4
		or al,0x30
		mov store_data,al
		mov al,bl
		and al, 0xf0
		or al, 0x30
		mov store_data+1,al
		display store_data, 2
		display nl,1
		mov eax,1
		int 0x80

