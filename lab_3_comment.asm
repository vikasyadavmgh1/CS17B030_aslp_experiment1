	.file	"lab_3.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	ebp             ;		stack[top-0] <- [ebp] 
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp	;		ebp<-esp
	.cfi_def_cfa_register 5
	push	edi             ;		stack[top-1] <- [edi] 
	push	esi             ;		stack[top-2] <- [esi] 
	push	ebx             ;		stack[top-3] <- [ebx] 
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	eax, 0		;		eax<-0
	pop	ebx             ;	ebx <- stack[top-3]
	.cfi_restore 3
	pop	esi             ;	ebx <- stack[top-2]
	.cfi_restore 6
	pop	edi             ;	ebx <- stack[top-1]
	.cfi_restore 7
	pop	ebp             ;	ebx <- stack[top-0]
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
