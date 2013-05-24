	.file	"fibonacci.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	fib
	.type	fib, @function
fib:
.LFB38:
	.cfi_startproc
	cmp	edi, 1
	mov	DWORD PTR [rsp-24], 0
	mov	DWORD PTR [rsp-20], 1
	mov	DWORD PTR [rsp-16], 1
	jle	.L2
	cmp	edi, 2
	mov	ecx, 1
	mov	esi, 1
	mov	edx, 2
	jne	.L8
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L7:
	mov	ecx, eax
.L8:
	add	edx, 1
	lea	eax, [rsi+rcx]
	mov	esi, ecx
	cmp	edx, edi
	jne	.L7
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	movsx	rdi, edi
	mov	eax, DWORD PTR [rsp-24+rdi*4]
	ret
.L11:
	mov	eax, 1
	ret
	.cfi_endproc
.LFE38:
	.size	fib, .-fib
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"fib(%d) = %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB39:
	.cfi_startproc
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rdi, QWORD PTR [rsi+8]
	mov	edx, 10
	xor	esi, esi
	call	strtol
	mov	rbx, rax
	mov	edi, eax
	call	fib
	mov	edx, ebx
	mov	ecx, eax
	mov	esi, OFFSET FLAT:.LC0
	pop	rbx
	.cfi_def_cfa_offset 8
	mov	edi, 1
	xor	eax, eax
	jmp	__printf_chk
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-1ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
