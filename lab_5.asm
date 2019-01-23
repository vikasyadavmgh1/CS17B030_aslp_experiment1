	.file	"lab_5.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	lea	ecx, [esp+4]
	.cfi_def_cfa 1, 0
	and	esp, -16
	push	DWORD PTR [ecx-4]
	push	ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	mov	ebp, esp
	push	ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	sub	esp, 68
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR [ebp-12], eax
	xor	eax, eax
	mov	DWORD PTR [ebp-52], 0
	mov	DWORD PTR [ebp-48], 1
	mov	DWORD PTR [ebp-44], 2
	mov	DWORD PTR [ebp-40], 3
	mov	DWORD PTR [ebp-36], 4
	mov	DWORD PTR [ebp-32], 5
	mov	DWORD PTR [ebp-28], 1
	mov	DWORD PTR [ebp-24], 43
	mov	DWORD PTR [ebp-20], 0
	mov	DWORD PTR [ebp-16], 4
	mov	DWORD PTR [ebp-60], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR [ebp-60]
	mov	eax, DWORD PTR [ebp-52+eax*4]
	mov	DWORD PTR [ebp-56], eax
	mov	eax, DWORD PTR [ebp-60]
	mov	edx, DWORD PTR [ebp-32+eax*4]
	mov	eax, DWORD PTR [ebp-60]
	mov	DWORD PTR [ebp-52+eax*4], edx
	mov	eax, DWORD PTR [ebp-60]
	mov	edx, DWORD PTR [ebp-56]
	mov	DWORD PTR [ebp-32+eax*4], edx
	add	DWORD PTR [ebp-60], 1
.L2:
	cmp	DWORD PTR [ebp-60], 4
	jle	.L3
	mov	eax, 0
	mov	ecx, DWORD PTR [ebp-12]
	xor	ecx, DWORD PTR gs:20
	je	.L5
	call	__stack_chk_fail
.L5:
	add	esp, 68
	pop	ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	pop	ebp
	.cfi_restore 5
	lea	esp, [ecx-4]
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
