	.file	"lab_4.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc		;initialise some internal data structure	
	push	rbp		;		stack[top-0] <- [rbp] 
	.cfi_def_cfa_offset 16  ; set new offset for same register
	.cfi_offset 6, -16	; previous value of register 6 is saved as offset from CFA
	mov	rbp, rsp	;	rbp<-[rsp]
	.cfi_def_cfa_register 6 ;offset will remain same but register will be used instead of old one
	sub	rsp, 48		;	rsp<-[rsp]-48
	mov	rax, QWORD PTR fs:40	;rax<-PTR fs:40
	mov	QWORD PTR -8[rbp], rax	;-8[rbp]<-rax; 
	xor	eax, eax		;eax <- [eax] xor [eax] ;eax<-0
	mov	DWORD PTR -32[rbp], 0   ;-32[rbp]<- 0;
	mov	DWORD PTR -28[rbp], 1	;-28[rbp]<- 1
	mov	DWORD PTR -24[rbp], 2	;-24[rbp]<-2
	mov	DWORD PTR -20[rbp], 3	;-20[rbp]<-3
	mov	DWORD PTR -16[rbp], 4	;-16[rbp]<-4
	mov	DWORD PTR -36[rbp], 0	;-36[rbp]<-0
	jmp	.L2			;jump to .L2
.L3:
	mov	eax, DWORD PTR -36[rbp]	;eax<- -36[rbp]
	cdqe				;Convert Byte to Word/Convert Word to Doubleword/Convert Doubleword to Quadword
	mov	eax, DWORD PTR -32[rbp+rax*4];eax<- -32[rbp+rax*4]
	lea	edx, 1[rax]		; edx<-1[rax]
	mov	eax, DWORD PTR -36[rbp]  ; eax<- -36[rbp]
	cdqe				;Convert Byte to Word/Convert Word to Doubleword/Convert Doubleword to Quadword
	mov	DWORD PTR -32[rbp+rax*4], edx	;-32[rbp+rax*4]<- edx
	add	DWORD PTR -36[rbp], 1	;	-36[rbp]<- -36[rbp]+1
.L2:
	cmp	DWORD PTR -36[rbp], 4
	jle	.L3			;jump to .L3	
	mov	eax, 0			; eax<- 0
	mov	rcx, QWORD PTR -8[rbp]	;rcx<- -8[rbp]
	xor	rcx, QWORD PTR fs:40	;rcx<- [rcx] xor fs:40
	je	.L5
	call	__stack_chk_fail@PLT	;Call Procedure
.L5:
	leave				;High Level Procedure Exit
	.cfi_def_cfa 7, 8		; take address from register 7 and add offset 8 to it
	ret				;Return from Procedure
	.cfi_endproc			; end of a function
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
