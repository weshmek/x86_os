	.file	"kernel.c"
	.section	.rodata
.LC0:
	.string	"Wesley Chalmers Kernel"
	.text
.globl kmain
	.type	kmain, @function
kmain:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	call	__i686.get_pc_thunk.cx
	addl	$_GLOBAL_OFFSET_TABLE_, %ecx
	leal	.LC0@GOTOFF(%ecx), %eax
	movl	%eax, -4(%ebp)
	movl	$753664, -8(%ebp)
	movl	$0, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2
.L3:
	movl	-16(%ebp), %eax
	movl	-8(%ebp), %edx
	leal	(%edx,%eax), %eax
	movb	$32, (%eax)
	movl	-16(%ebp), %eax
	addl	$1, %eax
	addl	-8(%ebp), %eax
	movb	$7, (%eax)
	addl	$2, -16(%ebp)
.L2:
	cmpl	$3999, -16(%ebp)
	jbe	.L3
	movl	$0, -16(%ebp)
	jmp	.L4
.L5:
	movl	-12(%ebp), %eax
	movl	-8(%ebp), %edx
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	movl	-12(%ebp), %eax
	addl	$1, %eax
	addl	-8(%ebp), %eax
	movb	$7, (%eax)
	addl	$2, -12(%ebp)
	addl	$1, -4(%ebp)
.L4:
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L5
	movl	$0, %eax
	leave
	ret
	.size	kmain, .-kmain
	.ident	"GCC: (Ubuntu/Linaro 4.4.4-14ubuntu5) 4.4.5"
	.section	.text.__i686.get_pc_thunk.cx,"axG",@progbits,__i686.get_pc_thunk.cx,comdat
.globl __i686.get_pc_thunk.cx
	.hidden	__i686.get_pc_thunk.cx
	.type	__i686.get_pc_thunk.cx, @function
__i686.get_pc_thunk.cx:
	movl	(%esp), %ecx
	ret
	.section	.note.GNU-stack,"",@progbits
