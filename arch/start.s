.section .text


.align 4
.int 0x1BADB002
.int 0x00
.int - (0x1BADB002 + 0x00)

.global start
start:
	cli 
        movl stack_space, %esp
        call kmain
        hlt

.size start,.-start

.section .bss
stack_space:
.size stack_space, 8192

