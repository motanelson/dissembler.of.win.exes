

.section .text
.global _start
.extern kernel_main

_start:
        mov 0x21cd4cff,%eax
	mov $stack_top, %esp
	call kernel_main
	cli
b1:	hlt
	jmp b1

     

.section .multiboot
.align 4

.word 0
.section .bss
.align 16
stack_bottom:
.skip 16384 # 16 KiB
stack_top:


.section .text
.global _start
.global screens
.extern kernel_main

