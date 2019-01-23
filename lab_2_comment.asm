	.file	"lab_2.c"
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
	mov	ebp, esp	;		ebp<-[esp]
	.cfi_def_cfa_register 5
	push	edi             ;		stack[top-1] <- [edi] 
	push	esi             ;		stack[top-2] <- [esi] 
	push	ebx             ;		stack[top-3] <- [ebx] 
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	mov	ebx, 434	;		ebx<-434
	mov	esi, 43		;		esi<-43
	mov	edi, 41		;		edi<-41
	add	ebx, esi	;	ebx<-[ebx]+[esi];ebx<-477
	sub	esi, ebx	;	esi<-[esi]-[ebx];esi<- -434
	mov	eax, ebx	;	eax<- [ebx]	;eax<- 477
	cdq                              	; copies the sign (bit 31) of the value in the 
                                          EAX register into every bit position in the EDX register
	idiv	esi                             ; eax <- [eax] / [esi] ; eax <- -1
	mov	ebx, eax	;	ebx<- [eax]	;ebx<- -1
	mov	esi, ebx	;	esi<- [ebx]	;esi<- -1
	imul	esi, edi        ;	esi <- [edi] * [esi] ; esi <- -41
	mov	ebx, esi	;	ebx<- [esi]	;ebx<- -41
	and	ebx, edi	;       ebx<- [ebx] and [edi] ;ebx<- 1
	or	edi, ebx	;       edi <- [edi] or [ebx] ; edi<- 41
	mov	esi, edi	;	esi<- [edi]	;esi<- 41
	xor	ebx, esi	;	ebx<-[ebx] xor [esi]; ebx<- 40
	not	ebx		;	ebx<- not [ebx]      ; ebx<- -41
	mov	eax, 0		;	eax<- 0	
	pop	ebx             ;	ebx <- stack[top-3] 	
	.cfi_restore 3
	pop	esi              ; esi <- stack[top-2] ; 
	.cfi_restore 6
	pop	edi		;  edi <- stack[top-1];
	.cfi_restore 7
	pop	ebp		;  edp <- stack[top-0];
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
