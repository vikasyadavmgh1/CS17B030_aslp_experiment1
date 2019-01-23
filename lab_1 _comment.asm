	.file	"lab_1.c"
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
	mov	ebp, esp                 	; ebp <- [esp]
	.cfi_def_cfa_register 5
	push	esi            ;		stack[top-1] <- [esi] 
	push	ebx            ;		stack[top-2] <- [ebx] 
	sub	esp, 32		;		esp<- [esp]-32
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	mov	ebx, 10				; ebx <- 10
	mov	esi, 20				; esi <- 20
	lea	eax, [ebx+esi]			; eax <-[ebx+esi] ;eax<-30
	mov	DWORD PTR [ebp-36], eax         ; [ebp-36]<-eax; eax<-30
	mov	eax, ebx                 	; eax <- [ebx] ; eax <- 10
	sub	eax, esi                	; eax <- [eax] - [esi] ; eax <- -10
	mov	DWORD PTR [ebp-32], eax         ; [ebp-32]<-eax; eax<-10
	mov	eax, ebx                 	; eax <- [ebx] ; eax <- 10
	imul	eax, esi                	; eax <- [eax] * [esi] ; eax <- 200
	mov	DWORD PTR [ebp-28], eax         ; [ebp-28]<-eax; eax<-200
	mov	eax, ebx                 	; eax <- [ebx] ; eax <- 10
	cdq                              	; copies the sign (bit 31) of the value in the 
                                          EAX register into every bit position in the EDX register.
	idiv	esi                             ; eax <- [eax] / [esi] ; eax <- 0
	mov	DWORD PTR [ebp-24], eax        ; [ebp-36]<-eax; eax<-0
	mov	eax, esi                 	; eax <- [esi] ; eax <- 20
	or	eax, ebx                	; eax <- [eax] | [ebx] ; eax <- 30
	mov	DWORD PTR [ebp-20], eax         ; [ebp-20]<-eax; eax<-30
	mov	eax, DWORD PTR [ebp-36]		; eax<-[ebp-36];eax<-30
	add	eax, ebx			;eax<-[eax]+[ebx];eax<-40
	mov	DWORD PTR [ebp-16], eax        ; [ebp-16]<-eax; eax<-40
	mov	eax, DWORD PTR [ebp-36]		; eax<-[ebp-36];eax<-30
	sub	eax, ebx                	; eax <- [eax] - [ebx] ; eax <- 20
	mov	DWORD PTR [ebp-12], eax        ; [ebp-12]<-eax; eax<- 20
	mov	eax, 0				; ebx <- 0
	add	esp, 32				;esp<- 32
	pop	ebx	                      ; ebx <- stack[top-2] ; 
	.cfi_restore 3
	pop	esi	                        ; esi <- stack[top-1] ; 
	.cfi_restore 6
	pop	ebp	                        ; ebp <- stack[top-0] ; 
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
