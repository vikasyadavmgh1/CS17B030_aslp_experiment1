	.file	"lab_2.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	edi
	push	esi
	push	ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, 434
	mov	esi, 43
	mov	edi, 41
	add	ebx, esi
	sub	esi, ebx
	mov	eax, ebx
	cdq
	idiv	esi
	mov	ebx, eax
	mov	esi, ebx
	imul	esi, edi
	mov	ebx, esi
	and	ebx, edi
	or	edi, ebx
	mov	esi, edi
	xor	ebx, esi
	not	ebx
	mov	eax, 0
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	edi
	.cfi_restore 7
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
