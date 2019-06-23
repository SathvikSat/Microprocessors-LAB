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

x: .ds 50

.text
.global _start

            _start: mov cx,20
                    lea esi,x
                    
                    mov byte ptr[esi],0
                    up: inc byte ptr[esi]
                        display x,1
  
                                       
                  
                        loop up

                       mov eax,1
                       int 0x80

