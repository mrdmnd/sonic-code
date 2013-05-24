	.file	"fibonacci.c"
	.intel_syntax noprefix
	.text
	.globl	fib
	.type	fib, @function
fib:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-36], edi
	mov	DWORD PTR [rbp-16], 0
	mov	DWORD PTR [rbp-12], 1
	mov	DWORD PTR [rbp-8], 1
	cmp	DWORD PTR [rbp-36], 1
	jg	.L2
	mov	eax, DWORD PTR [rbp-36]
	cdqe
	mov	eax, DWORD PTR [rbp-16+rax*4]
	jmp	.L6
.L2:
	mov	DWORD PTR [rbp-28], 2
	jmp	.L4
.L5:
	mov	eax, DWORD PTR [rbp-12]
	mov	DWORD PTR [rbp-24], eax
	mov	eax, DWORD PTR [rbp-8]
	mov	DWORD PTR [rbp-20], eax
	mov	eax, DWORD PTR [rbp-24]
	mov	DWORD PTR [rbp-16], eax
	mov	eax, DWORD PTR [rbp-20]
	mov	DWORD PTR [rbp-12], eax
	mov	eax, DWORD PTR [rbp-20]
	mov	edx, DWORD PTR [rbp-24]
	add	eax, edx
	mov	DWORD PTR [rbp-8], eax
	add	DWORD PTR [rbp-28], 1
.L4:
	mov	eax, DWORD PTR [rbp-28]
	cmp	eax, DWORD PTR [rbp-36]
	jl	.L5
	mov	eax, DWORD PTR [rbp-8]
.L6:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fib, .-fib
	.section	.rodata
.LC0:
	.string	"fib(%d) = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR [rbp-24], rdi
	mov	QWORD PTR [rbp-32], rsi
	mov	rax, QWORD PTR [rbp-32]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-4]
	mov	edi, eax
	call	fib
	mov	edx, eax
	mov	eax, DWORD PTR [rbp-4]
	mov	esi, eax
	mov	edi, OFFSET FLAT:.LC0
	mov	eax, 0
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-1ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
