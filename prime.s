.intel_mnemonic
.intel_syntax noprefix
.data

arr1:

	.byte 7
	.equ len,.-arr1

.text
.global _start
_start:
	
		lea esi, arr1
		mov cx, len
repeat:	
        mov bl, byte ptr[esi]
		mov al, 0x02
  up1:  mov dl,al		
     	div bl
		cmp ah, 0x00
		je notprime
        mov al,dl
		inc al
		cmp al, bl
		je go
		jmp up1

	go: mov dh,11
        inc esi
		loop repeat
        jmp ex

notprime: mov dh,12

        ex:   nop
              mov eax,1
              int 0x80







