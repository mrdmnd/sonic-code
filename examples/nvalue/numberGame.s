	.file	"numberGame.cc"
# GNU C++ (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D_GNU_SOURCE numberGame.cc
# -mtune=generic -march=x86-64 -O3 -fverbose-asm -fstack-protector
# options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
# -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
# -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
# -fdevirtualize -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexceptions -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm
# -fgnu-runtime -fguess-branch-probability -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-cp -fipa-cp-clone -fipa-profile
# -fipa-pure-const -fipa-reference -fipa-sra -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-register-move
# -foptimize-sibling-calls -foptimize-strlen -fpartial-inlining -fpeephole
# -fpeephole2 -fpredictive-commoning -fprefetch-loop-arrays -free
# -freg-struct-return -fregmove -freorder-blocks -freorder-functions
# -frerun-cse-after-loop -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns2
# -fshow-column -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fstack-protector -fstrict-aliasing -fstrict-overflow
# -fstrict-volatile-bitfields -fthread-jumps -ftoplevel-reorder
# -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp
# -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vect-loop-version -ftree-vectorize -ftree-vrp -funit-at-a-time
# -funswitch-loops -funwind-tables -fvect-cost-model -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mglibc -mieee-fp -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mtls-direct-seg-refs

	.text
	.p2align 4,,15
	.globl	_Z10mutateStepP7state_t
	.type	_Z10mutateStepP7state_t, @function
_Z10mutateStepP7state_t:
.LFB785:
	.cfi_startproc
	movl	(%rdi), %eax	# game_1(D)->a, D.13707
	movl	4(%rdi), %r8d	# game_1(D)->b, D.13708
	movl	8(%rdi), %esi	# game_1(D)->c, D.13710
	movl	12(%rdi), %edx	# game_1(D)->d, D.13712
	movl	%eax, %r9d	# D.13707, tmp72
	subl	%r8d, %r9d	# D.13708, tmp72
	subl	%esi, %r8d	# D.13710, tmp75
	subl	%edx, %esi	# D.13712, tmp78
	movl	%r9d, %ecx	# tmp72, tmp73
	subl	%eax, %edx	# D.13707, tmp81
	sarl	$31, %ecx	#, tmp73
	movl	%edx, %eax	# tmp81, tmp82
	xorl	%ecx, %r9d	# tmp73, tmp74
	sarl	$31, %eax	#, tmp82
	movl	%r9d, (%rdi)	# tmp74, game_1(D)->a
	subl	%ecx, (%rdi)	# tmp73, game_1(D)->a
	movl	%r8d, %ecx	# tmp75, tmp76
	sarl	$31, %ecx	#, tmp76
	xorl	%eax, %edx	# tmp82, tmp83
	xorl	%ecx, %r8d	# tmp76, tmp77
	movl	%edx, 12(%rdi)	# tmp83, game_1(D)->d
	subl	%eax, 12(%rdi)	# tmp82, game_1(D)->d
	movl	%r8d, 4(%rdi)	# tmp77, game_1(D)->b
	subl	%ecx, 4(%rdi)	# tmp76, game_1(D)->b
	movl	%esi, %ecx	# tmp78, tmp79
	sarl	$31, %ecx	#, tmp79
	xorl	%ecx, %esi	# tmp79, tmp80
	movl	%esi, 8(%rdi)	# tmp80, game_1(D)->c
	subl	%ecx, 8(%rdi)	# tmp79, game_1(D)->c
	ret
	.cfi_endproc
.LFE785:
	.size	_Z10mutateStepP7state_t, .-_Z10mutateStepP7state_t
	.p2align 4,,15
	.globl	_Z10pathLengthP7state_t
	.type	_Z10pathLengthP7state_t, @function
_Z10pathLengthP7state_t:
.LFB787:
	.cfi_startproc
	movl	4(%rdi), %edx	# game_3(D)->b, x
	movl	8(%rdi), %ecx	# game_3(D)->c, y
	xorl	%eax, %eax	# count
	movl	12(%rdi), %esi	# game_3(D)->d, z
	movl	(%rdi), %r9d	# game_3(D)->a, w
	.p2align 4,,10
	.p2align 3
.L4:
	testl	%r9d, %r9d	# w
	jne	.L3	#,
	testl	%edx, %edx	# x
	jne	.L3	#,
	testl	%ecx, %ecx	# y
	jne	.L3	#,
	testl	%esi, %esi	# z
	.p2align 4,,5
	jne	.L3	#,
	.p2align 4,,7
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%r9d, %r8d	# w, D.13744
	addl	$1, %eax	#, count
	subl	%edx, %r8d	# x, D.13744
	subl	%ecx, %edx	# y, D.13742
	subl	%esi, %ecx	# z, D.13740
	movl	%r8d, %r10d	# D.13744, tmp78
	subl	%r9d, %esi	# w, D.13739
	sarl	$31, %r10d	#, tmp78
	movl	%esi, %r9d	# D.13739, tmp81
	xorl	%r10d, %r8d	# tmp78, w
	sarl	$31, %r9d	#, tmp81
	subl	%r10d, %r8d	# tmp78, w
	movl	%edx, %r10d	# D.13742, tmp79
	xorl	%r9d, %esi	# tmp81, z
	sarl	$31, %r10d	#, tmp79
	subl	%r9d, %esi	# tmp81, z
	movl	%r8d, (%rdi)	# w, game_3(D)->a
	xorl	%r10d, %edx	# tmp79, x
	movl	%esi, 12(%rdi)	# z, game_3(D)->d
	movl	%r8d, %r9d	# w, w
	subl	%r10d, %edx	# tmp79, x
	movl	%ecx, %r10d	# D.13740, tmp80
	sarl	$31, %r10d	#, tmp80
	movl	%edx, 4(%rdi)	# x, game_3(D)->b
	xorl	%r10d, %ecx	# tmp80, y
	subl	%r10d, %ecx	# tmp80, y
	movl	%ecx, 8(%rdi)	# y, game_3(D)->c
	jmp	.L4	#
	.cfi_endproc
.LFE787:
	.size	_Z10pathLengthP7state_t, .-_Z10pathLengthP7state_t
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.type	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E, @function
_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E:
.LFB821:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14	# __x, __x
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# this, this
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
	testq	%rsi, %rsi	# __x
	je	.L7	#,
.L42:
	movq	24(%r14), %rax	# MEM[(struct _Rb_tree_node_base *)__x_66 + 24B],
	testq	%rax, %rax	#
	movq	%rax, 8(%rsp)	#, %sfp
	je	.L14	#,
.L46:
	movq	24(%rax), %rax	# MEM[(struct _Rb_tree_node_base *)__x_61 + 24B],
	testq	%rax, %rax	#
	movq	%rax, 16(%rsp)	#, %sfp
	je	.L17	#,
.L47:
	movq	24(%rax), %rax	# MEM[(struct _Rb_tree_node_base *)__x_72 + 24B],
	testq	%rax, %rax	#
	movq	%rax, 24(%rsp)	#, %sfp
	je	.L20	#,
.L48:
	movq	24(%rax), %rax	# MEM[(struct _Rb_tree_node_base *)__x_77 + 24B],
	testq	%rax, %rax	#
	movq	%rax, 32(%rsp)	#, %sfp
	je	.L23	#,
.L49:
	movq	24(%rax), %rax	# MEM[(struct _Rb_tree_node_base *)__x_82 + 24B],
	testq	%rax, %rax	#
	movq	%rax, 40(%rsp)	#, %sfp
	je	.L26	#,
.L50:
	movq	24(%rax), %r13	# MEM[(struct _Rb_tree_node_base *)__x_87 + 24B], __x
	testq	%r13, %r13	# __x
	je	.L29	#,
.L51:
	movq	24(%r13), %r12	# MEM[(struct _Rb_tree_node_base *)__x_92 + 24B], __x
	testq	%r12, %r12	# __x
	je	.L32	#,
	.p2align 4,,10
	.p2align 3
.L52:
	movq	24(%r12), %r15	# MEM[(struct _Rb_tree_node_base *)__x_97 + 24B], __x
	testq	%r15, %r15	# __x
	je	.L34	#,
	.p2align 4,,10
	.p2align 3
.L43:
	movq	24(%r15), %rsi	# MEM[(struct _Rb_tree_node_base *)__x_102 + 24B], MEM[(struct _Rb_tree_node_base *)__x_102 + 24B]
	movq	%rbp, %rdi	# this,
	call	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E	#
	movq	16(%r15), %rbx	# MEM[(struct _Rb_tree_node_base *)__x_102 + 16B], __x
	movq	%r15, %rdi	# __x,
	call	_ZdlPv	#
	testq	%rbx, %rbx	# __x
	movq	%rbx, %r15	# __x, __x
	jne	.L43	#,
.L34:
	movq	16(%r12), %rbx	# MEM[(struct _Rb_tree_node_base *)__x_97 + 16B], __x
	movq	%r12, %rdi	# __x,
	call	_ZdlPv	#
	testq	%rbx, %rbx	# __x
	je	.L32	#,
	movq	%rbx, %r12	# __x, __x
	jmp	.L52	#
.L32:
	movq	16(%r13), %rbx	# MEM[(struct _Rb_tree_node_base *)__x_92 + 16B], __x
	movq	%r13, %rdi	# __x,
	call	_ZdlPv	#
	testq	%rbx, %rbx	# __x
	je	.L54	#,
	movq	%rbx, %r13	# __x, __x
	jmp	.L51	#
.L54:
	movq	40(%rsp), %rax	# %sfp,
.L29:
	movq	16(%rax), %rbx	# MEM[(struct _Rb_tree_node_base *)__x_87 + 16B], __x
	movq	%rax, %rdi	#,
	call	_ZdlPv	#
	testq	%rbx, %rbx	# __x
	je	.L26	#,
	movq	%rbx, 40(%rsp)	# __x, %sfp
	movq	%rbx, %rax	# __x,
	jmp	.L50	#
.L26:
	movq	32(%rsp), %rax	# %sfp,
	movq	16(%rax), %rbx	# MEM[(struct _Rb_tree_node_base *)__x_82 + 16B], __x
	movq	%rax, %rdi	#,
	call	_ZdlPv	#
	testq	%rbx, %rbx	# __x
	je	.L23	#,
	movq	%rbx, 32(%rsp)	# __x, %sfp
	movq	%rbx, %rax	# __x,
	jmp	.L49	#
.L23:
	movq	24(%rsp), %rax	# %sfp,
	movq	16(%rax), %rbx	# MEM[(struct _Rb_tree_node_base *)__x_77 + 16B], __x
	movq	%rax, %rdi	#,
	call	_ZdlPv	#
	testq	%rbx, %rbx	# __x
	je	.L20	#,
	movq	%rbx, 24(%rsp)	# __x, %sfp
	movq	%rbx, %rax	# __x,
	jmp	.L48	#
.L20:
	movq	16(%rsp), %rax	# %sfp,
	movq	16(%rax), %rbx	# MEM[(struct _Rb_tree_node_base *)__x_72 + 16B], __x
	movq	%rax, %rdi	#,
	call	_ZdlPv	#
	testq	%rbx, %rbx	# __x
	je	.L17	#,
	movq	%rbx, 16(%rsp)	# __x, %sfp
	movq	%rbx, %rax	# __x,
	jmp	.L47	#
.L17:
	movq	8(%rsp), %rax	# %sfp,
	movq	16(%rax), %rbx	# MEM[(struct _Rb_tree_node_base *)__x_61 + 16B], __x
	movq	%rax, %rdi	#,
	call	_ZdlPv	#
	testq	%rbx, %rbx	# __x
	je	.L14	#,
	movq	%rbx, 8(%rsp)	# __x, %sfp
	movq	%rbx, %rax	# __x,
	jmp	.L46	#
.L14:
	movq	16(%r14), %rbx	# MEM[(struct _Rb_tree_node_base *)__x_66 + 16B], __y
	movq	%r14, %rdi	# __x,
	call	_ZdlPv	#
	testq	%rbx, %rbx	# __x
	movq	%rbx, %r14	# __y, __x
	jne	.L42	#,
.L7:
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE821:
	.size	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E, .-_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_
	.type	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_, @function
_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_:
.LFB871:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14	# __v, __v
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	8(%rdi), %r12	#, __y
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# this, this
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
	movq	16(%rdi), %rdx	# MEM[(struct _Rb_tree *)this_5(D) + 16B], __x
	testq	%rdx, %rdx	# __x
	je	.L56	#,
	movl	(%rsi), %ebx	# MEM[(const int &)__v_14(D)], prephitmp.181
	jmp	.L59	#
	.p2align 4,,10
	.p2align 3
.L86:
	movq	16(%rdx), %rax	# MEM[(struct _Rb_tree_node_base *)__x_159 + 16B], __x
	movl	$1, %r9d	#, __comp
	testq	%rax, %rax	# __x
	je	.L85	#,
.L68:
	movq	%rax, %rdx	# __x, __x
.L59:
	movl	32(%rdx), %r8d	# MEM[(const int &)__x_159 + 32], prephitmp.181
	cmpl	%r8d, %ebx	# prephitmp.181, prephitmp.181
	jl	.L86	#,
	movq	24(%rdx), %rax	# MEM[(struct _Rb_tree_node_base *)__x_159 + 24B], __x
	xorl	%r9d, %r9d	# __comp
	testq	%rax, %rax	# __x
	jne	.L68	#,
.L85:
	testb	%r9b, %r9b	# __comp
	movq	%rdx, %r13	# __x, __y
	movq	%rdx, %rax	# __y, __j$_M_node
	jne	.L87	#,
	cmpl	%r8d, %ebx	# prephitmp.181, prephitmp.181
	jg	.L88	#,
.L65:
	movq	%rax, 16(%rsp)	# __j$_M_node, D.13611.first._M_node
	movb	$0, 24(%rsp)	#, MEM[(struct pair *)&D.13611 + 8B]
.L64:
	movq	16(%rsp), %rax	# D.13611, D.13611
	movl	24(%rsp), %edx	# D.13611, D.13611
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	.cfi_restore_state
	cmpq	24(%rbp), %rdx	# MEM[(struct _Rb_tree *)this_5(D) + 24B], __y
	je	.L89	#,
.L61:
	movq	%r13, %rdi	# __y,
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base	#
	movl	32(%rax), %r8d	# MEM[(const int &)__j$_M_node_124 + 32], prephitmp.181
	cmpl	%r8d, %ebx	# prephitmp.181, prephitmp.181
	jle	.L65	#,
.L88:
	cmpq	%r12, %r13	# __y, __y
	je	.L71	#,
	xorl	%r15d, %r15d	# prephitmp.183
	cmpl	%ebx, 32(%r13)	# prephitmp.181, MEM[(const int &)__y_129 + 32]
	setg	%r15b	#, prephitmp.183
	jmp	.L66	#
.L89:
	cmpq	%r12, %rdx	# __y, __y
	je	.L71	#,
	xorl	%r15d, %r15d	# prephitmp.183
	cmpl	32(%rdx), %ebx	# MEM[(const int &)__y_97 + 32], prephitmp.181
	setl	%r15b	#, prephitmp.183
.L66:
	movl	$48, %edi	#,
	call	_Znwm	#
	cmpq	$-32, %rax	#, __z
	movq	%rax, %rbx	#, __z
	je	.L67	#,
	movq	(%r14), %rax	# *__v_14(D), *__v_14(D)
	movq	%rax, 32(%rbx)	# *__v_14(D),
	movq	8(%r14), %rax	# *__v_14(D), *__v_14(D)
	movq	%rax, 40(%rbx)	# *__v_14(D),
.L67:
	movq	%r12, %rcx	# __y,
	movq	%r13, %rdx	# __y,
	movq	%rbx, %rsi	# __z,
	movl	%r15d, %edi	# prephitmp.183,
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_	#
	addq	$1, 40(%rbp)	#, this_5(D)->_M_impl._M_node_count
	movq	%rbx, 16(%rsp)	# __z, D.13611.first._M_node
	movb	$1, 24(%rsp)	#, MEM[(struct pair *)&D.13611 + 8B]
	jmp	.L64	#
.L71:
	movl	$1, %r15d	#, prephitmp.183
	jmp	.L66	#
.L56:
	cmpq	24(%rdi), %r12	# MEM[(struct _Rb_tree *)this_5(D) + 24B], __y
	movq	%r12, %r13	# __y, __y
	je	.L71	#,
	movl	(%rsi), %ebx	# MEM[(const int &)__v_14(D)], prephitmp.181
	jmp	.L61	#
	.cfi_endproc
.LFE871:
	.size	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_, .-_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_
	.section	.text._ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_,"axG",@progbits,_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_
	.type	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_, @function
_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_:
.LFB854:
	.cfi_startproc
	movq	%r13, -24(%rsp)	#,
	.cfi_offset 13, -32
	leaq	8(%rdi), %r13	#, D.14422
	movq	%rbx, -48(%rsp)	#,
	movq	%rbp, -40(%rsp)	#,
	movq	%r12, -32(%rsp)	#,
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	movq	%rdi, %rbp	# this, this
	movq	%r14, -16(%rsp)	#,
	movq	%r15, -8(%rsp)	#,
	subq	$88, %rsp	#,
	.cfi_def_cfa_offset 96
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	cmpq	%rsi, %r13	# __position, D.14422
	movq	%rsi, %rbx	# __position, __position
	movq	%rdx, %r12	# __v, __v
	je	.L136	#,
	movl	(%rdx), %r14d	# MEM[(const int &)__v_12(D)], D.14464
	cmpl	32(%rsi), %r14d	# MEM[(const int &)__position$_M_node_170 + 32], D.14464
	jge	.L95	#,
	movq	24(%rdi), %r15	# MEM[(struct _Rb_tree_node_base * &)this_5(D) + 24], D.13449
	cmpq	%rsi, %r15	# __position, D.13449
	je	.L137	#,
	movq	%rsi, %rdi	# __position,
	call	_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base	#
	cmpl	32(%rax), %r14d	# MEM[(const int &)D.14905_214 + 32], D.14464
	movq	%rax, %r15	#, D.14905
	jle	.L92	#,
	cmpq	%rax, %r13	# D.14905, D.14422
	sete	%r14b	#, D.15064
	cmpq	$0, 24(%rax)	#, MEM[(const struct _Rb_tree_node_base *)D.14905_214 + 24B]
	je	.L135	#,
	movl	$48, %edi	#,
	call	_Znwm	#
	cmpq	$-32, %rax	#, __z
	movq	%rax, %r14	#, __z
	je	.L102	#,
	movq	(%r12), %rax	# *__v_12(D), *__v_12(D)
	movq	%rax, 32(%r14)	# *__v_12(D), MEM[(struct pair *)__z_242 + 32B]
	movq	8(%r12), %rax	# *__v_12(D), *__v_12(D)
	movq	%rax, 40(%r14)	# *__v_12(D), MEM[(struct pair *)__z_242 + 32B]
.L102:
	movq	%r13, %rcx	# D.14422,
	movq	%rbx, %rdx	# __position,
	movq	%r14, %rsi	# __z,
	movl	$1, %edi	#,
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_	#
	addq	$1, 40(%rbp)	#, this_5(D)->_M_impl._M_node_count
	movq	%r14, %rax	# __z, D.13439
.L124:
	movq	40(%rsp), %rbx	#,
	movq	48(%rsp), %rbp	#,
	movq	56(%rsp), %r12	#,
	movq	64(%rsp), %r13	#,
	movq	72(%rsp), %r14	#,
	movq	80(%rsp), %r15	#,
	addq	$88, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L95:
	.cfi_restore_state
	movq	%rsi, %rax	# __position, D.13439
	jle	.L124	#,
	movq	32(%rdi), %r15	# MEM[(struct _Rb_tree_node_base * &)this_5(D) + 32], D.13475
	cmpq	%rsi, %r15	# __position, D.13475
	je	.L138	#,
	movq	%rsi, %rdi	# __position,
	call	_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base	#
	cmpl	32(%rax), %r14d	# MEM[(const int &)D.15000_258 + 32], D.14464
	movq	%rax, %r15	#, D.15000
	jge	.L92	#,
	cmpq	$0, 24(%rbx)	#, MEM[(const struct _Rb_tree_node_base *)__position$_M_node_170 + 24B]
	movl	$48, %edi	#,
	je	.L139	#,
	call	_Znwm	#
	cmpq	$-32, %rax	#, __z
	movq	%rax, %rbx	#, __z
	je	.L109	#,
.L133:
	movq	(%r12), %rax	# *__v_12(D), *__v_12(D)
	movq	%rax, 32(%rbx)	# *__v_12(D),
	movq	8(%r12), %rax	# *__v_12(D), *__v_12(D)
	movq	%rax, 40(%rbx)	# *__v_12(D),
.L109:
	movq	%r13, %rcx	# D.14422,
	movq	%r15, %rdx	# D.15000,
	movq	%rbx, %rsi	# __z,
	movl	$1, %edi	#,
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_	#
	addq	$1, 40(%rbp)	#, this_5(D)->_M_impl._M_node_count
	movq	%rbx, %rax	# __z, D.13439
	jmp	.L124	#
	.p2align 4,,10
	.p2align 3
.L136:
	cmpq	$0, 40(%rdi)	#, MEM[(const struct _Rb_tree *)this_5(D) + 40B]
	je	.L92	#,
	movq	32(%rdi), %r14	# MEM[(struct _Rb_tree_node_base * &)this_5(D) + 32], D.13432
	movl	(%rdx), %eax	# MEM[(const int &)__v_12(D)],
	cmpl	%eax, 32(%r14)	#, MEM[(const int &)D.13432_15 + 32]
	jl	.L93	#,
	.p2align 4,,10
	.p2align 3
.L92:
	movq	%r12, %rsi	# __v,
	movq	%rbp, %rdi	# this,
	call	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_	#
	movl	%edx, 8(%rsp)	# tmp153,
	jmp	.L124	#
	.p2align 4,,10
	.p2align 3
.L138:
	cmpl	32(%r15), %r14d	# MEM[(const int &)D.13475_69 + 32], D.14464
	setl	%r14b	#, D.15063
.L135:
	movl	$48, %edi	#,
	call	_Znwm	#
	cmpq	$-32, %rax	#, __z
	movq	%rax, %rbx	#, __z
	je	.L105	#,
	movq	(%r12), %rax	# *__v_12(D), *__v_12(D)
	movq	%rax, 32(%rbx)	# *__v_12(D),
	movq	8(%r12), %rax	# *__v_12(D), *__v_12(D)
	movq	%rax, 40(%rbx)	# *__v_12(D),
.L105:
	movzbl	%r14b, %edi	# D.15063, D.15063
	movq	%r13, %rcx	# D.14422,
	movq	%r15, %rdx	# D.13475,
	movq	%rbx, %rsi	# __z,
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_	#
	addq	$1, 40(%rbp)	#, this_5(D)->_M_impl._M_node_count
	movq	%rbx, %rax	# __z, D.13439
	jmp	.L124	#
	.p2align 4,,10
	.p2align 3
.L137:
	movl	$48, %edi	#,
	call	_Znwm	#
	cmpq	$-32, %rax	#, __z
	movq	%rax, %rbx	#, __z
	jne	.L133	#,
	jmp	.L109	#
	.p2align 4,,10
	.p2align 3
.L93:
	xorl	%r15d, %r15d	# tmp149
	movl	$48, %edi	#,
	cmpq	%r14, %r13	# D.13432, D.14422
	sete	%r15b	#, tmp149
	call	_Znwm	#
	cmpq	$-32, %rax	#, __z
	movq	%rax, %rbx	#, __z
	je	.L111	#,
	movq	(%r12), %rax	# *__v_12(D), *__v_12(D)
	movq	%rax, 32(%rbx)	# *__v_12(D), MEM[(struct pair *)__z_198 + 32B]
	movq	8(%r12), %rax	# *__v_12(D), *__v_12(D)
	movq	%rax, 40(%rbx)	# *__v_12(D), MEM[(struct pair *)__z_198 + 32B]
.L111:
	movq	%r13, %rcx	# D.14422,
	movq	%r14, %rdx	# D.13432,
	movq	%rbx, %rsi	# __z,
	movl	%r15d, %edi	# tmp149,
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_	#
	addq	$1, 40(%rbp)	#, this_5(D)->_M_impl._M_node_count
	movq	%rbx, %rax	# __z, D.13439
	jmp	.L124	#
.L139:
	call	_Znwm	#
	cmpq	$-32, %rax	#, __z
	movq	%rax, %r14	#, __z
	je	.L108	#,
	movq	(%r12), %rax	# *__v_12(D), *__v_12(D)
	movq	%rax, 32(%r14)	# *__v_12(D), MEM[(struct pair *)__z_272 + 32B]
	movq	8(%r12), %rax	# *__v_12(D), *__v_12(D)
	movq	%rax, 40(%r14)	# *__v_12(D), MEM[(struct pair *)__z_272 + 32B]
.L108:
	movq	%r13, %rcx	# D.14422,
	movq	%rbx, %rdx	# __position,
	movq	%r14, %rsi	# __z,
	xorl	%edi, %edi	#
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_	#
	addq	$1, 40(%rbp)	#, this_5(D)->_M_impl._M_node_count
	movq	%r14, %rax	# __z, D.13439
	jmp	.L124	#
	.cfi_endproc
.LFE854:
	.size	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_, .-_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d -> %ld\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB788:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA788
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$10, %edx	#,
	xorl	%r14d, %r14d	# i
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$80, %rsp	#,
	.cfi_def_cfa_offset 128
	movq	8(%rsi), %rdi	# MEM[(char * *)argv_5(D) + 8B], MEM[(char * *)argv_5(D) + 8B]
	xorl	%esi, %esi	#
	leaq	40(%rsp), %rax	#, tmp151
	movl	$0, 40(%rsp)	#, MEM[(struct _Rb_tree_impl *)&distribution]._M_header._M_color
	movq	$0, 48(%rsp)	#, MEM[(struct _Rb_tree_impl *)&distribution]._M_header._M_parent
	movq	$0, 72(%rsp)	#, MEM[(struct _Rb_tree_impl *)&distribution]._M_node_count
	movq	%rax, 56(%rsp)	# tmp151, MEM[(struct _Rb_tree_impl *)&distribution]._M_header._M_left
	movq	%rax, 64(%rsp)	# tmp151, MEM[(struct _Rb_tree_impl *)&distribution]._M_header._M_right
	call	strtol	#
	testl	%eax, %eax	# D.14609
	movl	%eax, %r12d	# D.14609, maxNum
	jle	.L142	#,
.L186:
	xorl	%r13d, %r13d	# j
.L162:
	xorl	%ebp, %ebp	# k
.L161:
	xorl	%ebx, %ebx	# l
	.p2align 4,,10
	.p2align 3
.L158:
	movl	%ebx, %ecx	# l, item$d
	movl	%ebp, %edx	# k, item$c
	movl	%r13d, %eax	# j, item$b
	movl	%r14d, %esi	# i, item$a
	xorl	%edi, %edi	# len
	.p2align 4,,10
	.p2align 3
.L167:
	testl	%esi, %esi	# item$a
	jne	.L143	#,
	testl	%eax, %eax	# item$b
	jne	.L143	#,
	testl	%edx, %edx	# item$c
	jne	.L143	#,
	testl	%ecx, %ecx	# item$d
	.p2align 4,,5
	jne	.L143	#,
	movq	48(%rsp), %rdx	# MEM[(struct _Rb_tree *)&distribution + 16B], __i$_M_node
	testq	%rdx, %rdx	# __i$_M_node
	je	.L171	#,
	movq	%rdx, %rax	# __i$_M_node, __i$_M_node
	leaq	40(%rsp), %rcx	#, __i$_M_node
	jmp	.L147	#
	.p2align 4,,10
	.p2align 3
.L190:
	movq	%rax, %rcx	# __i$_M_node, __i$_M_node
	movq	16(%rax), %rax	# MEM[(struct _Rb_tree_node_base *)__i$_M_node_243 + 16B], __i$_M_node
	testq	%rax, %rax	# __i$_M_node
	je	.L189	#,
.L147:
	cmpl	32(%rax), %edi	# MEM[(const int &)__i$_M_node_243 + 32], len
	jle	.L190	#,
	movq	24(%rax), %rax	# MEM[(struct _Rb_tree_node_base *)__i$_M_node_243 + 24B], __i$_M_node
	testq	%rax, %rax	# __i$_M_node
	jne	.L147	#,
.L189:
	leaq	40(%rsp), %rax	#, tmp156
	cmpq	%rax, %rcx	# tmp156, __i$_M_node
	je	.L172	#,
	cmpl	32(%rcx), %edi	# MEM[(const int &)__i$_M_node_4 + 32], len
	movq	%rax, %rsi	# tmp156, __i$_M_node
	jge	.L180	#,
	jmp	.L179	#
	.p2align 4,,10
	.p2align 3
.L192:
	movq	%rdx, %rsi	# __i$_M_node, __i$_M_node
	movq	16(%rdx), %rdx	# MEM[(struct _Rb_tree_node_base *)__i$_M_node_145 + 16B], __i$_M_node
	testq	%rdx, %rdx	# __i$_M_node
	je	.L191	#,
.L180:
	cmpl	32(%rdx), %edi	# MEM[(const int &)__i$_M_node_145 + 32], len
	jle	.L192	#,
	movq	24(%rdx), %rdx	# MEM[(struct _Rb_tree_node_base *)__i$_M_node_145 + 24B], __i$_M_node
	testq	%rdx, %rdx	# __i$_M_node
	jne	.L180	#,
.L191:
	leaq	40(%rsp), %rax	#, tmp160
	cmpq	%rax, %rsi	# tmp160, __i$_M_node
	je	.L156	#,
	cmpl	32(%rsi), %edi	# MEM[(const int &)__i$_M_node_17 + 32], len
	jl	.L156	#,
	movq	%rsi, %rax	# __i$_M_node, __i$_M_node
.L157:
	addq	$1, 40(%rax)	#, MEM[(mapped_type &)__i$_M_node_118 + 40]
.L153:
	addl	$1, %ebx	#, l
	cmpl	%r12d, %ebx	# maxNum, l
	jl	.L158	#,
	addl	$1, %ebp	#, k
	cmpl	%r12d, %ebp	# maxNum, k
	jl	.L161	#,
	addl	$1, %r13d	#, j
	cmpl	%r12d, %r13d	# maxNum, j
	jl	.L162	#,
	addl	$1, %r14d	#, i
	cmpl	%r12d, %r14d	# maxNum, i
	jl	.L186	#,
.L142:
	movq	56(%rsp), %rbx	# MEM[(struct _Rb_tree *)&distribution + 24B], it$_M_node
	leaq	40(%rsp), %rbp	#, tmp162
	cmpq	%rbp, %rbx	# tmp182, it$_M_node
	je	.L165	#,
.L178:
	movq	40(%rbx), %rcx	# MEM[(struct pair *)it$_M_node_146 + 32B].second, MEM[(struct pair *)it$_M_node_146 + 32B].second
	movl	32(%rbx), %edx	# MEM[(struct pair *)it$_M_node_146 + 32B].first, MEM[(struct pair *)it$_M_node_146 + 32B].first
	movl	$.LC0, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
.LEHB0:
	call	__printf_chk	#
	movq	%rbx, %rdi	# it$_M_node,
	call	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base	#
	cmpq	%rbp, %rax	# tmp182, it$_M_node
	movq	%rax, %rbx	#, it$_M_node
	jne	.L178	#,
.L165:
	movq	48(%rsp), %rsi	# MEM[(struct _Rb_tree *)&distribution + 16B],
	leaq	32(%rsp), %rdi	#,
	call	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E	#
	addq	$80, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L143:
	.cfi_restore_state
	movl	%esi, %r10d	# item$a, D.15092
	addl	$1, %edi	#, len
	subl	%eax, %r10d	# item$b, D.15092
	subl	%edx, %eax	# item$c, D.15090
	subl	%ecx, %edx	# item$d, D.15088
	movl	%eax, %r9d	# D.15090, tmp174
	subl	%esi, %ecx	# item$a, D.15087
	movl	%r10d, %r8d	# D.15092, tmp173
	sarl	$31, %r9d	#, tmp174
	movl	%ecx, %esi	# D.15087, tmp176
	sarl	$31, %r8d	#, tmp173
	xorl	%r9d, %eax	# tmp174, item$b
	sarl	$31, %esi	#, tmp176
	xorl	%r8d, %r10d	# tmp173, item$a
	subl	%r9d, %eax	# tmp174, item$b
	movl	%edx, %r9d	# D.15088, tmp175
	xorl	%esi, %ecx	# tmp176, item$d
	sarl	$31, %r9d	#, tmp175
	subl	%esi, %ecx	# tmp176, item$d
	movl	%r10d, %esi	# item$a, item$a
	xorl	%r9d, %edx	# tmp175, item$c
	subl	%r8d, %esi	# tmp173, item$a
	subl	%r9d, %edx	# tmp175, item$c
	jmp	.L167	#
	.p2align 4,,10
	.p2align 3
.L194:
	movq	%rdx, %rax	# __i$_M_node, __i$_M_node
	movq	16(%rdx), %rdx	# MEM[(struct _Rb_tree_node_base *)__i$_M_node_47 + 16B], __i$_M_node
	testq	%rdx, %rdx	# __i$_M_node
	je	.L193	#,
.L179:
	cmpl	32(%rdx), %edi	# MEM[(const int &)__i$_M_node_47 + 32], len
	jle	.L194	#,
	movq	24(%rdx), %rdx	# MEM[(struct _Rb_tree_node_base *)__i$_M_node_47 + 24B], __i$_M_node
	testq	%rdx, %rdx	# __i$_M_node
	jne	.L179	#,
.L193:
	leaq	40(%rsp), %rdx	#, tmp158
	cmpq	%rdx, %rax	# tmp158, __i$_M_node
	je	.L144	#,
	cmpl	32(%rax), %edi	# MEM[(const int &)__i$_M_node_38 + 32], len
	jge	.L152	#,
.L144:
	movl	%edi, (%rsp)	# len, D.15124.first
	leaq	32(%rsp), %rdi	#,
	movq	%rsp, %rdx	#,
	movq	%rax, %rsi	# __i$_M_node,
	movq	$0, 8(%rsp)	#, D.15124.second
	call	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_	#
.L152:
	movq	$1, 40(%rax)	#, MEM[(mapped_type &)__i$_M_node_235 + 40]
	jmp	.L153	#
	.p2align 4,,10
	.p2align 3
.L156:
	movl	%edi, 16(%rsp)	# len, D.15145.first
	leaq	16(%rsp), %rdx	#,
	leaq	32(%rsp), %rdi	#,
	movq	$0, 24(%rsp)	#, D.15145.second
	call	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_	#
.LEHE0:
	jmp	.L157	#
.L171:
	leaq	40(%rsp), %rax	#, __i$_M_node
	jmp	.L144	#
.L172:
	movq	%rcx, %rax	# __i$_M_node, __i$_M_node
	.p2align 4,,3
	jmp	.L179	#
.L177:
	movq	48(%rsp), %rsi	# MEM[(struct _Rb_tree *)&distribution + 16B],
	leaq	32(%rsp), %rdi	#,
	movq	%rax, %rbx	#, tmp172
	call	_ZNSt8_Rb_treeIiSt4pairIKilESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E	#
	movq	%rbx, %rdi	# tmp172,
.LEHB1:
	call	_Unwind_Resume	#
.LEHE1:
	.cfi_endproc
.LFE788:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA788:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE788-.LLSDACSB788
.LLSDACSB788:
	.uleb128 .LEHB0-.LFB788
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L177-.LFB788
	.uleb128 0
	.uleb128 .LEHB1-.LFB788
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE788:
	.section	.text.startup
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
