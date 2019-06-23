.intel_mnemonic
.intel_syntax noprefix
.include "exit_fn.s"
.data
.text
.global _start
_start: mov al, 0x34
		mov bl, 0xf7
        mov ah,0x12
		mov bh,0x45
		add al, bl
        adc ah,bh
exit
