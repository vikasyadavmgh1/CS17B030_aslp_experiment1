	.file	"lab_1.c"
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
	push	esi
	push	ebx
	sub	esp, 32
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ebx, 10
	mov	esi, 20
	lea	eax, [ebx+esi]
	mov	DWORD PTR [ebp-36], eax
	mov	eax, ebx
	sub	eax, esi
	mov	DWORD PTR [ebp-32], eax
	mov	eax, ebx
	imul	eax, esi
	mov	DWORD PTR [ebp-28], eax
	mov	eax, ebx
	cdq
	idiv	esi
	mov	DWORD PTR [ebp-24], eax
	mov	eax, esi
	or	eax, ebx
	mov	DWORD PTR [ebp-20], eax
	mov	eax, DWORD PTR [ebp-36]
	add	eax, ebx
	mov	DWORD PTR [ebp-16], eax
	mov	eax, DWORD PTR [ebp-36]
	sub	eax, ebx
	mov	DWORD PTR [ebp-12], eax
	mov	eax, 0
	add	esp, 32
	pop	ebx
	.cfi_restore 3
	pop	esi
	.cfi_restore 6
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
