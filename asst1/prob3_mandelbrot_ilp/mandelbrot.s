	.file	"mandelbrot.cpp"
	.text
	.p2align 4
	.globl	_Z11mandel_par1PfS_iPi
	.type	_Z11mandel_par1PfS_iPi, @function
_Z11mandel_par1PfS_iPi:
.LFB1274:
	.cfi_startproc
	endbr64
	vmovss	(%rdi), %xmm4
	vmovss	(%rsi), %xmm3
	testl	%edx, %edx
	jle	.L7
	vmovaps	%xmm4, %xmm0
	vmovaps	%xmm3, %xmm1
	xorl	%eax, %eax
.L5:
	vmulss	%xmm0, %xmm0, %xmm2
	vmulss	%xmm1, %xmm1, %xmm5
	vaddss	%xmm5, %xmm2, %xmm6
	vcomiss	.LC0(%rip), %xmm6
	ja	.L6
	vaddss	%xmm0, %xmm0, %xmm0
	vsubss	%xmm5, %xmm2, %xmm2
	addl	$1, %eax
	vmulss	%xmm1, %xmm0, %xmm1
	vaddss	%xmm4, %xmm2, %xmm0
	vaddss	%xmm3, %xmm1, %xmm1
	cmpl	%eax, %edx
	jne	.L5
.L6:
	movl	%eax, (%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xorl	%eax, %eax
	jmp	.L6
	.cfi_endproc
.LFE1274:
	.size	_Z11mandel_par1PfS_iPi, .-_Z11mandel_par1PfS_iPi
	.p2align 4
	.globl	_Z11mandel_par2PfS_iPi
	.type	_Z11mandel_par2PfS_iPi, @function
_Z11mandel_par2PfS_iPi:
.LFB1275:
	.cfi_startproc
	endbr64
	vmovss	(%rdi), %xmm8
	vmovss	(%rsi), %xmm10
	movl	%edx, %r11d
	vmovss	4(%rdi), %xmm7
	vmovss	4(%rsi), %xmm9
	testl	%edx, %edx
	jle	.L32
	vmovaps	%xmm10, %xmm4
	vmovaps	%xmm9, %xmm3
	vmovaps	%xmm8, %xmm1
	xorl	%r9d, %r9d
	vmovaps	%xmm7, %xmm0
	xorl	%edx, %edx
	xorl	%edi, %edi
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L21:
	vaddss	%xmm1, %xmm1, %xmm1
	vsubss	%xmm11, %xmm2, %xmm2
	addl	$1, %eax
	vmulss	%xmm4, %xmm1, %xmm4
	vaddss	%xmm8, %xmm2, %xmm1
	vaddss	%xmm0, %xmm0, %xmm2
	vsubss	%xmm6, %xmm5, %xmm0
	vmulss	%xmm3, %xmm2, %xmm2
	vaddss	%xmm7, %xmm0, %xmm0
	vaddss	%xmm10, %xmm4, %xmm4
	vaddss	%xmm9, %xmm2, %xmm3
	cmpl	%eax, %r11d
	je	.L16
	testb	%dl, %dl
	cmove	%eax, %r10d
.L14:
	vmulss	%xmm1, %xmm1, %xmm2
	vmulss	%xmm4, %xmm4, %xmm11
	vmulss	%xmm3, %xmm3, %xmm6
	vaddss	%xmm11, %xmm2, %xmm5
	vcomiss	.LC0(%rip), %xmm5
	vmulss	%xmm0, %xmm0, %xmm5
	seta	%r8b
	testb	%dil, %dil
	cmove	%eax, %r9d
	vaddss	%xmm6, %xmm5, %xmm12
	vcomiss	.LC0(%rip), %xmm12
	seta	%sil
	orl	%edi, %esi
	movl	%esi, %edi
	orb	%r8b, %dl
	je	.L21
	testb	%sil, %sil
	je	.L21
	movl	%r10d, (%rcx)
.L22:
	movl	%r9d, 4(%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	testb	%dl, %dl
	jne	.L33
	movl	%r11d, (%rcx)
	testb	%sil, %sil
	jne	.L22
.L15:
	movl	%r11d, %r9d
	movl	%r9d, 4(%rcx)
	ret
.L32:
	movl	$0, (%rcx)
	xorl	%r11d, %r11d
	jmp	.L15
.L33:
	movl	%r10d, (%rcx)
	jmp	.L15
	.cfi_endproc
.LFE1275:
	.size	_Z11mandel_par2PfS_iPi, .-_Z11mandel_par2PfS_iPi
	.p2align 4
	.globl	_Z11mandel_par3PfS_iPi
	.type	_Z11mandel_par3PfS_iPi, @function
_Z11mandel_par3PfS_iPi:
.LFB1276:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rcx, %r12
	xorl	%ecx, %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	movq	(%rdi), %rax
	movw	%cx, 13(%rsp)
	movb	$0, 15(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movq	%rax, 32(%rsp)
	movl	8(%rdi), %eax
	movl	%eax, 40(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 44(%rsp)
	movl	8(%rsi), %eax
	movl	%eax, 52(%rsp)
	testl	%edx, %edx
	jle	.L46
	movq	%rsi, %r8
	movl	%edx, %ebp
	vmovss	32(%rsp), %xmm2
	xorl	%r10d, %r10d
	vmovss	44(%rsp), %xmm7
	vmovss	36(%rsp), %xmm1
	xorl	%esi, %esi
	xorl	%edx, %edx
	vmovss	48(%rsp), %xmm6
	vmovss	40(%rsp), %xmm0
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	vmovss	52(%rsp), %xmm5
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L40:
	vaddss	%xmm2, %xmm2, %xmm2
	vsubss	%xmm10, %xmm3, %xmm3
	addl	$1, %eax
	vaddss	%xmm1, %xmm1, %xmm1
	vsubss	%xmm11, %xmm4, %xmm4
	vmulss	%xmm7, %xmm2, %xmm7
	vaddss	(%rdi), %xmm3, %xmm2
	vaddss	%xmm0, %xmm0, %xmm3
	vmulss	%xmm6, %xmm1, %xmm6
	vsubss	%xmm9, %xmm8, %xmm0
	vaddss	(%r8), %xmm7, %xmm7
	vaddss	4(%rdi), %xmm4, %xmm1
	vaddss	4(%r8), %xmm6, %xmm6
	vmulss	%xmm5, %xmm3, %xmm5
	vaddss	8(%rdi), %xmm0, %xmm0
	vaddss	8(%r8), %xmm5, %xmm5
	cmpl	%eax, %ebp
	je	.L58
.L36:
	vmulss	%xmm2, %xmm2, %xmm3
	testb	%cl, %cl
	vmulss	%xmm7, %xmm7, %xmm10
	cmove	%eax, %r11d
	vmulss	%xmm6, %xmm6, %xmm11
	vmulss	%xmm5, %xmm5, %xmm9
	vaddss	%xmm10, %xmm3, %xmm4
	vcomiss	.LC0(%rip), %xmm4
	vmulss	%xmm1, %xmm1, %xmm4
	seta	%bl
	orl	%ebx, %ecx
	testb	%dl, %dl
	cmove	%eax, %r9d
	vaddss	%xmm11, %xmm4, %xmm8
	vcomiss	.LC0(%rip), %xmm8
	vmulss	%xmm0, %xmm0, %xmm8
	seta	%bl
	orl	%ebx, %edx
	testb	%sil, %sil
	cmove	%eax, %r10d
	vaddss	%xmm9, %xmm8, %xmm12
	vcomiss	.LC0(%rip), %xmm12
	seta	%bl
	orl	%ebx, %esi
	testb	%dl, %cl
	je	.L40
	testb	%sil, %sil
	je	.L40
	movl	$257, %edx
	movl	%r11d, 16(%rsp)
	movl	%r9d, 20(%rsp)
	movl	%r10d, 24(%rsp)
	movw	%dx, 13(%rsp)
	movb	$1, 15(%rsp)
.L41:
	movl	16(%rsp), %ebp
.L42:
	cmpb	$0, 14(%rsp)
	movl	%ebp, (%r12)
	movl	%eax, %edx
	je	.L43
	movl	20(%rsp), %edx
.L43:
	cmpb	$0, 15(%rsp)
	movl	%edx, 4(%r12)
	je	.L44
	movl	24(%rsp), %eax
.L44:
	movl	%eax, 8(%r12)
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L59
	addq	$64, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L58:
	.cfi_restore_state
	vmovd	%r11d, %xmm1
	movb	%cl, 13(%rsp)
	movb	%dl, 14(%rsp)
	vpinsrd	$1, %r9d, %xmm1, %xmm0
	movl	%r10d, 24(%rsp)
	movb	%sil, 15(%rsp)
	vmovq	%xmm0, 16(%rsp)
.L35:
	cmpb	$0, 13(%rsp)
	movl	%ebp, %eax
	je	.L42
	jmp	.L41
.L46:
	xorl	%ebp, %ebp
	jmp	.L35
.L59:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1276:
	.size	_Z11mandel_par3PfS_iPi, .-_Z11mandel_par3PfS_iPi
	.p2align 4
	.globl	_Z11mandel_par4PfS_iPi
	.type	_Z11mandel_par4PfS_iPi, @function
_Z11mandel_par4PfS_iPi:
.LFB1277:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vpxor	%xmm0, %xmm0, %xmm0
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	(%rdi), %r8
	movq	8(%rdi), %rdx
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	(%rsi), %rcx
	movq	8(%rsi), %rax
	vmovdqa	%xmm0, 32(%rsp)
	movl	$0, 28(%rsp)
	testl	%r12d, %r12d
	jle	.L74
	vmovd	%r8d, %xmm3
	vmovd	%ecx, %xmm10
	shrq	$32, %r8
	vmovd	%edx, %xmm2
	shrq	$32, %rcx
	shrq	$32, %rdx
	vmovd	%eax, %xmm9
	vmovd	%r8d, %xmm1
	shrq	$32, %rax
	vmovd	%ecx, %xmm8
	vmovd	%edx, %xmm0
	xorl	%r11d, %r11d
	vmovd	%eax, %xmm7
	xorl	%r9d, %r9d
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L67:
	vaddss	%xmm3, %xmm3, %xmm3
	vaddss	%xmm1, %xmm1, %xmm1
	addl	$1, %eax
	vaddss	%xmm2, %xmm2, %xmm2
	vsubss	%xmm14, %xmm5, %xmm5
	vsubss	%xmm13, %xmm6, %xmm6
	vmulss	%xmm10, %xmm3, %xmm10
	vmovss	12(%rsp), %xmm3
	vmulss	%xmm8, %xmm1, %xmm8
	vaddss	(%rsi), %xmm10, %xmm10
	vaddss	4(%rdi), %xmm5, %xmm1
	vsubss	%xmm15, %xmm3, %xmm4
	vaddss	(%rdi), %xmm4, %xmm3
	vmulss	%xmm9, %xmm2, %xmm9
	vaddss	%xmm0, %xmm0, %xmm4
	vaddss	4(%rsi), %xmm8, %xmm8
	vsubss	%xmm12, %xmm11, %xmm0
	vaddss	8(%rdi), %xmm6, %xmm2
	vaddss	8(%rsi), %xmm9, %xmm9
	vaddss	12(%rdi), %xmm0, %xmm0
	vmulss	%xmm7, %xmm4, %xmm7
	vaddss	12(%rsi), %xmm7, %xmm7
	cmpl	%eax, %r12d
	je	.L87
.L62:
	vmulss	%xmm3, %xmm3, %xmm5
	testb	%r8b, %r8b
	vmulss	%xmm10, %xmm10, %xmm15
	cmove	%eax, %ebp
	vmulss	%xmm8, %xmm8, %xmm14
	vmulss	%xmm9, %xmm9, %xmm13
	vmovss	%xmm5, 12(%rsp)
	vmulss	%xmm7, %xmm7, %xmm12
	vaddss	%xmm5, %xmm15, %xmm5
	vcomiss	.LC0(%rip), %xmm5
	vmulss	%xmm1, %xmm1, %xmm5
	seta	%r14b
	orl	%r14d, %r8d
	testb	%cl, %cl
	cmove	%eax, %r10d
	vaddss	%xmm14, %xmm5, %xmm6
	vcomiss	.LC0(%rip), %xmm6
	vmulss	%xmm2, %xmm2, %xmm6
	seta	%r14b
	orl	%r14d, %ecx
	movl	%r8d, %r14d
	andl	%ecx, %r14d
	testb	%dl, %dl
	vaddss	%xmm13, %xmm6, %xmm11
	cmove	%eax, %ebx
	vcomiss	.LC0(%rip), %xmm11
	vmulss	%xmm0, %xmm0, %xmm11
	seta	%r15b
	orl	%r15d, %edx
	testb	%r9b, %r9b
	cmove	%eax, %r11d
	vaddss	%xmm12, %xmm11, %xmm4
	vcomiss	.LC0(%rip), %xmm4
	seta	%r15b
	orl	%r15d, %r9d
	testb	%dl, %r14b
	je	.L67
	testb	%r9b, %r9b
	je	.L67
	movl	%ebp, 32(%rsp)
	movl	%r10d, 36(%rsp)
	movl	%ebx, 40(%rsp)
	movl	%r11d, 44(%rsp)
	movl	$16843009, 28(%rsp)
.L68:
	movl	32(%rsp), %r12d
.L69:
	cmpb	$0, 29(%rsp)
	movl	%r12d, 0(%r13)
	movl	%eax, %edx
	je	.L70
	movl	36(%rsp), %edx
.L70:
	cmpb	$0, 30(%rsp)
	movl	%edx, 4(%r13)
	movl	%eax, %edx
	je	.L71
	movl	40(%rsp), %edx
.L71:
	cmpb	$0, 31(%rsp)
	movl	%edx, 8(%r13)
	je	.L72
	movl	44(%rsp), %eax
.L72:
	movl	%eax, 12(%r13)
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L88
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	.cfi_restore_state
	vmovd	%ebx, %xmm2
	vmovd	%ebp, %xmm3
	movb	%r8b, 28(%rsp)
	vpinsrd	$1, %r11d, %xmm2, %xmm1
	vpinsrd	$1, %r10d, %xmm3, %xmm0
	movb	%cl, 29(%rsp)
	movb	%dl, 30(%rsp)
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movb	%r9b, 31(%rsp)
	vmovdqa	%xmm0, 32(%rsp)
.L61:
	cmpb	$0, 28(%rsp)
	movl	%r12d, %eax
	je	.L69
	jmp	.L68
.L74:
	xorl	%r12d, %r12d
	jmp	.L61
.L88:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1277:
	.size	_Z11mandel_par4PfS_iPi, .-_Z11mandel_par4PfS_iPi
	.p2align 4
	.globl	_Z11mandel_par5PfS_iPi
	.type	_Z11mandel_par5PfS_iPi, @function
_Z11mandel_par5PfS_iPi:
.LFB1278:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vpxor	%xmm0, %xmm0, %xmm0
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	vmovdqu	(%rdi), %xmm4
	movl	%edx, 20(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	movl	16(%rdi), %eax
	vmovdqa	%xmm4, 48(%rsp)
	vmovdqu	(%rsi), %xmm4
	movl	$0, 43(%rsp)
	movl	%eax, 64(%rsp)
	movl	16(%rsi), %eax
	movb	$0, 47(%rsp)
	movl	%eax, 96(%rsp)
	movl	$0, 128(%rsp)
	vmovdqa	%xmm4, 80(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	testl	%edx, %edx
	jle	.L105
	vmovss	48(%rsp), %xmm5
	vmovss	80(%rsp), %xmm4
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	vmovss	52(%rsp), %xmm3
	vmovss	84(%rsp), %xmm14
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	vmovss	56(%rsp), %xmm2
	vmovss	88(%rsp), %xmm13
	xorl	%r12d, %r12d
	xorl	%r11d, %r11d
	vmovss	60(%rsp), %xmm1
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	xorl	%r14d, %r14d
	vmovss	92(%rsp), %xmm12
	vmovss	64(%rsp), %xmm0
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	vmovss	96(%rsp), %xmm11
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L97:
	vaddss	%xmm5, %xmm5, %xmm5
	vaddss	%xmm3, %xmm3, %xmm3
	addl	$1, %eax
	vaddss	%xmm2, %xmm2, %xmm2
	vaddss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm4, %xmm5, %xmm4
	vmovss	(%rsp), %xmm5
	vsubss	4(%rsp), %xmm5, %xmm5
	vmulss	%xmm14, %xmm3, %xmm14
	vaddss	(%rdi), %xmm5, %xmm5
	vsubss	8(%rsp), %xmm7, %xmm3
	vmulss	%xmm13, %xmm2, %xmm13
	vaddss	(%rsi), %xmm4, %xmm4
	vsubss	12(%rsp), %xmm8, %xmm2
	vmulss	%xmm12, %xmm1, %xmm12
	vaddss	4(%rdi), %xmm3, %xmm3
	vsubss	16(%rsp), %xmm9, %xmm1
	vmulss	%xmm11, %xmm0, %xmm11
	vaddss	4(%rsi), %xmm14, %xmm14
	vsubss	%xmm15, %xmm10, %xmm0
	vaddss	8(%rdi), %xmm2, %xmm2
	vaddss	8(%rsi), %xmm13, %xmm13
	vaddss	12(%rdi), %xmm1, %xmm1
	vaddss	12(%rsi), %xmm12, %xmm12
	vaddss	16(%rdi), %xmm0, %xmm0
	vaddss	16(%rsi), %xmm11, %xmm11
	cmpl	%eax, 20(%rsp)
	je	.L119
.L91:
	vmulss	%xmm5, %xmm5, %xmm6
	testb	%r9b, %r9b
	vmulss	%xmm4, %xmm4, %xmm7
	cmove	%eax, %r14d
	vmulss	%xmm14, %xmm14, %xmm15
	vmulss	%xmm13, %xmm13, %xmm9
	vmulss	%xmm12, %xmm12, %xmm10
	vmovss	%xmm6, (%rsp)
	vmovss	%xmm7, 4(%rsp)
	vaddss	%xmm6, %xmm7, %xmm7
	vcomiss	.LC0(%rip), %xmm7
	vmulss	%xmm3, %xmm3, %xmm7
	vmovss	%xmm15, 8(%rsp)
	seta	%r10b
	vmovss	%xmm9, 12(%rsp)
	orl	%r10d, %r9d
	testb	%r8b, %r8b
	vmovss	%xmm10, 16(%rsp)
	cmove	%eax, %ebx
	vaddss	%xmm15, %xmm7, %xmm8
	vmulss	%xmm11, %xmm11, %xmm15
	vcomiss	.LC0(%rip), %xmm8
	vmulss	%xmm2, %xmm2, %xmm8
	seta	%r10b
	orl	%r10d, %r8d
	movl	%r9d, %r10d
	andl	%r8d, %r10d
	testb	%cl, %cl
	vaddss	%xmm9, %xmm8, %xmm9
	cmove	%eax, %r13d
	vcomiss	.LC0(%rip), %xmm9
	vmulss	%xmm1, %xmm1, %xmm9
	seta	%r15b
	orl	%r15d, %ecx
	andl	%ecx, %r10d
	testb	%dl, %dl
	vaddss	%xmm10, %xmm9, %xmm10
	cmove	%eax, %ebp
	vcomiss	.LC0(%rip), %xmm10
	vmulss	%xmm0, %xmm0, %xmm10
	seta	%r15b
	orl	%r15d, %edx
	testb	%r11b, %r11b
	cmove	%eax, %r12d
	vaddss	%xmm15, %xmm10, %xmm6
	vcomiss	.LC0(%rip), %xmm6
	seta	%r15b
	orl	%r15d, %r11d
	testb	%dl, %r10b
	je	.L97
	testb	%r11b, %r11b
	je	.L97
	movl	%r14d, 112(%rsp)
	movl	%ebx, 116(%rsp)
	movl	%r13d, 120(%rsp)
	movl	%ebp, 124(%rsp)
	movl	%r12d, 128(%rsp)
	movl	$16843009, 43(%rsp)
	movb	$1, 47(%rsp)
.L98:
	movl	112(%rsp), %edx
.L99:
	movq	24(%rsp), %rbx
	cmpb	$0, 44(%rsp)
	movl	%edx, (%rbx)
	movl	%eax, %edx
	je	.L100
	movl	116(%rsp), %edx
.L100:
	movq	24(%rsp), %rbx
	cmpb	$0, 45(%rsp)
	movl	%edx, 4(%rbx)
	movl	%eax, %edx
	je	.L101
	movl	120(%rsp), %edx
.L101:
	movq	24(%rsp), %rbx
	cmpb	$0, 46(%rsp)
	movl	%edx, 8(%rbx)
	movl	%eax, %edx
	je	.L102
	movl	124(%rsp), %edx
.L102:
	movq	24(%rsp), %rbx
	cmpb	$0, 47(%rsp)
	movl	%edx, 12(%rbx)
	je	.L103
	movl	128(%rsp), %eax
.L103:
	movq	24(%rsp), %rbx
	movl	%eax, 16(%rbx)
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L120
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L119:
	.cfi_restore_state
	vmovd	%r13d, %xmm4
	movb	%r9b, 43(%rsp)
	vpinsrd	$1, %ebp, %xmm4, %xmm1
	vmovd	%r14d, %xmm4
	movb	%r8b, 44(%rsp)
	vpinsrd	$1, %ebx, %xmm4, %xmm0
	movb	%cl, 45(%rsp)
	movl	%r12d, 128(%rsp)
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movb	%r11b, 47(%rsp)
	movb	%dl, 46(%rsp)
	movl	20(%rsp), %edx
	vmovdqa	%xmm0, 112(%rsp)
.L90:
	cmpb	$0, 43(%rsp)
	movl	%edx, %eax
	je	.L99
	jmp	.L98
.L105:
	xorl	%edx, %edx
	jmp	.L90
.L120:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1278:
	.size	_Z11mandel_par5PfS_iPi, .-_Z11mandel_par5PfS_iPi
	.p2align 4
	.globl	_Z11mandel_par6PfS_iPi
	.type	_Z11mandel_par6PfS_iPi, @function
_Z11mandel_par6PfS_iPi:
.LFB1279:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vpxor	%xmm0, %xmm0, %xmm0
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	vmovdqu	(%rdi), %xmm5
	vmovdqu	(%rsi), %xmm7
	movl	%edx, 52(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	movq	16(%rdi), %rax
	movl	$0, 74(%rsp)
	movq	$0, 160(%rsp)
	movq	%rax, 96(%rsp)
	movq	16(%rsi), %rax
	vmovdqa	%xmm5, 80(%rsp)
	movq	%rax, 128(%rsp)
	xorl	%eax, %eax
	movw	%ax, 78(%rsp)
	vmovdqa	%xmm7, 112(%rsp)
	vmovdqa	%xmm0, 144(%rsp)
	testl	%edx, %edx
	jle	.L138
	vmovss	80(%rsp), %xmm3
	vmovss	112(%rsp), %xmm7
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	movl	$0, 12(%rsp)
	vmovss	84(%rsp), %xmm2
	xorl	%r9d, %r9d
	xorl	%r12d, %r12d
	movl	$0, 8(%rsp)
	vmovss	116(%rsp), %xmm5
	xorl	%r10d, %r10d
	xorl	%r14d, %r14d
	vmovss	88(%rsp), %xmm1
	vmovss	120(%rsp), %xmm15
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	vmovss	92(%rsp), %xmm0
	xorl	%r11d, %r11d
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	vmovss	124(%rsp), %xmm14
	vmovss	96(%rsp), %xmm13
	vmovss	128(%rsp), %xmm12
	vmovss	100(%rsp), %xmm11
	vmovss	132(%rsp), %xmm10
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L130:
	vaddss	%xmm13, %xmm13, %xmm4
	vaddss	%xmm3, %xmm3, %xmm3
	addl	$1, %eax
	vaddss	%xmm2, %xmm2, %xmm2
	vaddss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm0, %xmm0, %xmm0
	vsubss	44(%rsp), %xmm6, %xmm13
	vmulss	%xmm12, %xmm4, %xmm12
	vaddss	%xmm11, %xmm11, %xmm4
	vaddss	16(%rdi), %xmm13, %xmm13
	vmulss	%xmm7, %xmm3, %xmm7
	vsubss	48(%rsp), %xmm8, %xmm11
	vmovss	16(%rsp), %xmm3
	vmulss	%xmm5, %xmm2, %xmm5
	vsubss	20(%rsp), %xmm3, %xmm3
	vsubss	24(%rsp), %xmm9, %xmm2
	vmulss	%xmm15, %xmm1, %xmm15
	vaddss	(%rdi), %xmm3, %xmm3
	vmovss	28(%rsp), %xmm1
	vmulss	%xmm14, %xmm0, %xmm14
	vsubss	32(%rsp), %xmm1, %xmm1
	vmovss	36(%rsp), %xmm0
	vmulss	%xmm10, %xmm4, %xmm10
	vsubss	40(%rsp), %xmm0, %xmm0
	vaddss	(%rsi), %xmm7, %xmm7
	vaddss	4(%rdi), %xmm2, %xmm2
	vaddss	4(%rsi), %xmm5, %xmm5
	vaddss	8(%rdi), %xmm1, %xmm1
	vaddss	8(%rsi), %xmm15, %xmm15
	vaddss	12(%rdi), %xmm0, %xmm0
	vaddss	12(%rsi), %xmm14, %xmm14
	vaddss	16(%rsi), %xmm12, %xmm12
	vaddss	20(%rdi), %xmm11, %xmm11
	vaddss	20(%rsi), %xmm10, %xmm10
	cmpl	%eax, 52(%rsp)
	je	.L153
.L123:
	vmulss	%xmm3, %xmm3, %xmm4
	movl	8(%rsp), %edx
	testb	%r8b, %r8b
	vmulss	%xmm7, %xmm7, %xmm6
	vmulss	%xmm2, %xmm2, %xmm9
	cmove	%eax, %edx
	movl	%edx, 8(%rsp)
	vmulss	%xmm15, %xmm15, %xmm8
	vmovss	%xmm4, 16(%rsp)
	vmovss	%xmm6, 20(%rsp)
	vaddss	%xmm4, %xmm6, %xmm6
	vmulss	%xmm10, %xmm10, %xmm4
	vcomiss	.LC0(%rip), %xmm6
	vmulss	%xmm5, %xmm5, %xmm6
	vmovss	%xmm8, 32(%rsp)
	seta	%dl
	orl	%edx, %r8d
	testb	%cl, %cl
	vmovss	%xmm4, 48(%rsp)
	cmove	%eax, %r13d
	vmovss	%xmm6, 24(%rsp)
	vaddss	%xmm6, %xmm9, %xmm6
	vcomiss	.LC0(%rip), %xmm6
	vmulss	%xmm1, %xmm1, %xmm6
	seta	%dl
	orl	%edx, %ecx
	movl	%r8d, %edx
	andl	%ecx, %edx
	testb	%r11b, %r11b
	cmove	%eax, %r14d
	vmovss	%xmm6, 28(%rsp)
	vaddss	%xmm6, %xmm8, %xmm6
	vcomiss	.LC0(%rip), %xmm6
	vmulss	%xmm14, %xmm14, %xmm8
	vmulss	%xmm0, %xmm0, %xmm6
	seta	%r15b
	orl	%r15d, %r11d
	andl	%r11d, %edx
	testb	%r10b, %r10b
	cmove	%eax, %r12d
	vmovss	%xmm8, 40(%rsp)
	vmovss	%xmm6, 36(%rsp)
	vaddss	%xmm6, %xmm8, %xmm6
	vmulss	%xmm12, %xmm12, %xmm8
	vcomiss	.LC0(%rip), %xmm6
	vmulss	%xmm13, %xmm13, %xmm6
	seta	%r15b
	orl	%r15d, %r10d
	movl	12(%rsp), %r15d
	andl	%r10d, %edx
	testb	%r9b, %r9b
	vmovss	%xmm8, 44(%rsp)
	cmove	%eax, %r15d
	vaddss	%xmm8, %xmm6, %xmm8
	vcomiss	.LC0(%rip), %xmm8
	vmulss	%xmm11, %xmm11, %xmm8
	movl	%r15d, 12(%rsp)
	seta	%r15b
	orl	%r15d, %r9d
	testb	%bl, %bl
	cmove	%eax, %ebp
	vaddss	%xmm4, %xmm8, %xmm4
	vcomiss	.LC0(%rip), %xmm4
	seta	%r15b
	orl	%r15d, %ebx
	testb	%r9b, %dl
	je	.L130
	testb	%bl, %bl
	je	.L130
	movb	%cl, 75(%rsp)
	movl	8(%rsp), %ebx
	movl	12(%rsp), %ecx
	movb	%r8b, 74(%rsp)
	movl	%ebx, 144(%rsp)
	movl	%r13d, 148(%rsp)
	movl	%r14d, 152(%rsp)
	movl	%r12d, 156(%rsp)
	movl	%ecx, 160(%rsp)
	movl	%ebp, 164(%rsp)
	movl	$16843009, 76(%rsp)
.L122:
	cmpb	$0, 74(%rsp)
	movl	%eax, %edx
	je	.L131
	movl	144(%rsp), %edx
.L131:
	movq	56(%rsp), %rbx
	cmpb	$0, 75(%rsp)
	movl	%edx, (%rbx)
	movl	%eax, %edx
	je	.L132
	movl	148(%rsp), %edx
.L132:
	movq	56(%rsp), %rbx
	cmpb	$0, 76(%rsp)
	movl	%edx, 4(%rbx)
	movl	%eax, %edx
	je	.L133
	movl	152(%rsp), %edx
.L133:
	movq	56(%rsp), %rbx
	cmpb	$0, 77(%rsp)
	movl	%edx, 8(%rbx)
	movl	%eax, %edx
	je	.L134
	movl	156(%rsp), %edx
.L134:
	movq	56(%rsp), %rbx
	cmpb	$0, 78(%rsp)
	movl	%edx, 12(%rbx)
	movl	%eax, %edx
	je	.L135
	movl	160(%rsp), %edx
.L135:
	movq	56(%rsp), %rbx
	cmpb	$0, 79(%rsp)
	movl	%edx, 16(%rbx)
	je	.L136
	movl	164(%rsp), %eax
.L136:
	movq	56(%rsp), %rcx
	movl	%eax, 20(%rcx)
	movq	168(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L154
	addq	$184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L153:
	.cfi_restore_state
	vmovd	8(%rsp), %xmm7
	vmovd	%r14d, %xmm5
	movb	%r8b, 74(%rsp)
	vpinsrd	$1, %r12d, %xmm5, %xmm1
	vmovd	12(%rsp), %xmm5
	movb	%cl, 75(%rsp)
	vpinsrd	$1, %r13d, %xmm7, %xmm0
	movb	%r11b, 76(%rsp)
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movb	%r10b, 77(%rsp)
	vmovdqa	%xmm0, 144(%rsp)
	vpinsrd	$1, %ebp, %xmm5, %xmm0
	movb	%r9b, 78(%rsp)
	movb	%bl, 79(%rsp)
	vmovq	%xmm0, 160(%rsp)
	jmp	.L122
.L138:
	xorl	%eax, %eax
	jmp	.L122
.L154:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1279:
	.size	_Z11mandel_par6PfS_iPi, .-_Z11mandel_par6PfS_iPi
	.p2align 4
	.globl	_Z11mandel_par7PfS_iPi
	.type	_Z11mandel_par7PfS_iPi, @function
_Z11mandel_par7PfS_iPi:
.LFB1280:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vpxor	%xmm0, %xmm0, %xmm0
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	vmovdqu	(%rdi), %xmm4
	vmovdqu	(%rsi), %xmm6
	movl	%edx, 68(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	movq	16(%rdi), %rax
	movl	$0, 89(%rsp)
	movb	$0, 95(%rsp)
	movq	%rax, 112(%rsp)
	movl	24(%rdi), %eax
	movq	$0, 176(%rsp)
	movl	%eax, 120(%rsp)
	movq	16(%rsi), %rax
	movl	$0, 184(%rsp)
	movq	%rax, 144(%rsp)
	movl	24(%rsi), %eax
	vmovdqa	%xmm4, 96(%rsp)
	movl	%eax, 152(%rsp)
	xorl	%eax, %eax
	movw	%ax, 93(%rsp)
	vmovdqa	%xmm6, 128(%rsp)
	vmovdqa	%xmm0, 160(%rsp)
	testl	%edx, %edx
	jle	.L174
	movl	$0, 24(%rsp)
	vmovss	96(%rsp), %xmm1
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	movl	$0, 20(%rsp)
	vmovss	100(%rsp), %xmm0
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	movl	$0, 16(%rsp)
	vmovss	104(%rsp), %xmm11
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movl	$0, 12(%rsp)
	vmovss	108(%rsp), %xmm9
	xorl	%r11d, %r11d
	xorl	%r14d, %r14d
	vmovss	128(%rsp), %xmm4
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	vmovss	144(%rsp), %xmm13
	vmovss	112(%rsp), %xmm14
	vmovss	%xmm4, 4(%rsp)
	vmovss	116(%rsp), %xmm12
	vmovss	148(%rsp), %xmm4
	vmovss	132(%rsp), %xmm6
	vmovss	120(%rsp), %xmm10
	vmovss	136(%rsp), %xmm8
	vmovss	%xmm4, 8(%rsp)
	vmovss	152(%rsp), %xmm4
	vmovss	140(%rsp), %xmm15
	vmovss	%xmm4, (%rsp)
	vmovaps	%xmm13, %xmm4
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L165:
	vaddss	%xmm1, %xmm1, %xmm1
	vmulss	4(%rsp), %xmm1, %xmm1
	vaddss	%xmm0, %xmm0, %xmm0
	addl	$1, %eax
	vmulss	%xmm6, %xmm0, %xmm6
	vmovss	36(%rsp), %xmm0
	vsubss	40(%rsp), %xmm0, %xmm0
	vaddss	4(%rsi), %xmm6, %xmm6
	vaddss	4(%rdi), %xmm0, %xmm0
	vmovd	%xmm1, %edx
	vmovss	28(%rsp), %xmm1
	vsubss	32(%rsp), %xmm1, %xmm1
	vmovd	%edx, %xmm2
	vaddss	(%rsi), %xmm2, %xmm2
	vaddss	(%rdi), %xmm1, %xmm1
	vmovss	%xmm2, 4(%rsp)
	vaddss	%xmm11, %xmm11, %xmm2
	vmulss	%xmm8, %xmm2, %xmm8
	vmovss	44(%rsp), %xmm2
	vsubss	48(%rsp), %xmm2, %xmm11
	vaddss	%xmm9, %xmm9, %xmm2
	vsubss	52(%rsp), %xmm3, %xmm9
	vaddss	8(%rdi), %xmm11, %xmm11
	vaddss	8(%rsi), %xmm8, %xmm8
	vaddss	12(%rdi), %xmm9, %xmm9
	vmulss	%xmm15, %xmm2, %xmm15
	vaddss	%xmm14, %xmm14, %xmm2
	vsubss	56(%rsp), %xmm5, %xmm14
	vaddss	12(%rsi), %xmm15, %xmm15
	vaddss	16(%rdi), %xmm14, %xmm14
	vmulss	%xmm4, %xmm2, %xmm4
	vaddss	%xmm12, %xmm12, %xmm2
	vsubss	60(%rsp), %xmm7, %xmm12
	vmulss	8(%rsp), %xmm2, %xmm2
	vaddss	16(%rsi), %xmm4, %xmm4
	vaddss	20(%rsi), %xmm2, %xmm3
	vaddss	%xmm10, %xmm10, %xmm2
	vmulss	(%rsp), %xmm2, %xmm2
	vaddss	24(%rsi), %xmm2, %xmm7
	vsubss	64(%rsp), %xmm13, %xmm10
	vaddss	20(%rdi), %xmm12, %xmm12
	vaddss	24(%rdi), %xmm10, %xmm10
	vmovss	%xmm3, 8(%rsp)
	vmovss	%xmm7, (%rsp)
	cmpl	%eax, 68(%rsp)
	je	.L190
.L157:
	vmulss	%xmm1, %xmm1, %xmm3
	movl	12(%rsp), %edx
	testb	%r9b, %r9b
	movl	20(%rsp), %r15d
	vmovss	4(%rsp), %xmm5
	vmulss	%xmm0, %xmm0, %xmm7
	vmovss	8(%rsp), %xmm2
	cmove	%eax, %edx
	vmulss	%xmm5, %xmm5, %xmm5
	movl	%edx, 12(%rsp)
	vmovss	%xmm3, 28(%rsp)
	vmulss	%xmm2, %xmm2, %xmm13
	vmovss	(%rsp), %xmm2
	vmovss	%xmm7, 36(%rsp)
	vmulss	%xmm2, %xmm2, %xmm2
	vaddss	%xmm3, %xmm5, %xmm3
	vcomiss	.LC0(%rip), %xmm3
	vmovss	%xmm5, 32(%rsp)
	vmulss	%xmm6, %xmm6, %xmm3
	vmovss	%xmm13, 60(%rsp)
	vmulss	%xmm11, %xmm11, %xmm5
	seta	%dl
	vmovss	%xmm2, 64(%rsp)
	orl	%edx, %r9d
	movl	16(%rsp), %edx
	testb	%r8b, %r8b
	cmove	%eax, %edx
	vmovss	%xmm3, 40(%rsp)
	vaddss	%xmm7, %xmm3, %xmm3
	vcomiss	.LC0(%rip), %xmm3
	vmovss	%xmm5, 44(%rsp)
	vmulss	%xmm8, %xmm8, %xmm7
	movl	%edx, 16(%rsp)
	seta	%dl
	orl	%edx, %r8d
	movl	%r9d, %edx
	andl	%r8d, %edx
	testb	%cl, %cl
	vaddss	%xmm5, %xmm7, %xmm3
	cmove	%eax, %r15d
	vmovss	%xmm7, 48(%rsp)
	vcomiss	.LC0(%rip), %xmm3
	vmulss	%xmm15, %xmm15, %xmm5
	movl	%r15d, 20(%rsp)
	vmulss	%xmm9, %xmm9, %xmm3
	vmulss	%xmm4, %xmm4, %xmm7
	seta	%r15b
	orl	%r15d, %ecx
	andl	%ecx, %edx
	testb	%bl, %bl
	cmove	%eax, %r14d
	vmovss	%xmm5, 52(%rsp)
	vaddss	%xmm5, %xmm3, %xmm5
	vcomiss	.LC0(%rip), %xmm5
	vmovss	%xmm7, 56(%rsp)
	vmulss	%xmm14, %xmm14, %xmm5
	seta	%r15b
	orl	%r15d, %ebx
	movl	24(%rsp), %r15d
	andl	%ebx, %edx
	testb	%r11b, %r11b
	cmove	%eax, %r15d
	vaddss	%xmm7, %xmm5, %xmm7
	vcomiss	.LC0(%rip), %xmm7
	vmulss	%xmm12, %xmm12, %xmm7
	movl	%r15d, 24(%rsp)
	seta	%r15b
	orl	%r15d, %r11d
	andl	%r11d, %edx
	testb	%r10b, %r10b
	vaddss	%xmm13, %xmm7, %xmm13
	cmove	%eax, %r12d
	vcomiss	.LC0(%rip), %xmm13
	vmulss	%xmm10, %xmm10, %xmm13
	seta	%r15b
	orl	%r15d, %r10d
	testb	%bpl, %bpl
	cmove	%eax, %r13d
	vaddss	%xmm2, %xmm13, %xmm2
	vcomiss	.LC0(%rip), %xmm2
	seta	%r15b
	orl	%r15d, %ebp
	testb	%r10b, %dl
	je	.L165
	testb	%bpl, %bpl
	je	.L165
	movl	12(%rsp), %ebx
	movb	%cl, 91(%rsp)
	movl	24(%rsp), %ecx
	movb	%r9b, 89(%rsp)
	movl	%ebx, 160(%rsp)
	movl	16(%rsp), %ebx
	movb	%r8b, 90(%rsp)
	movl	%ebx, 164(%rsp)
	movl	20(%rsp), %ebx
	movl	%r14d, 172(%rsp)
	movl	%ebx, 168(%rsp)
	movl	%ecx, 176(%rsp)
	movl	%r12d, 180(%rsp)
	movl	%r13d, 184(%rsp)
	movl	$16843009, 92(%rsp)
.L156:
	cmpb	$0, 89(%rsp)
	movl	%eax, %edx
	je	.L166
	movl	160(%rsp), %edx
.L166:
	movq	72(%rsp), %rbx
	cmpb	$0, 90(%rsp)
	movl	%edx, (%rbx)
	movl	%eax, %edx
	je	.L167
	movl	164(%rsp), %edx
.L167:
	movq	72(%rsp), %rbx
	cmpb	$0, 91(%rsp)
	movl	%edx, 4(%rbx)
	movl	%eax, %edx
	je	.L168
	movl	168(%rsp), %edx
.L168:
	movq	72(%rsp), %rbx
	cmpb	$0, 92(%rsp)
	movl	%edx, 8(%rbx)
	movl	%eax, %edx
	je	.L169
	movl	172(%rsp), %edx
.L169:
	movq	72(%rsp), %rcx
	cmpb	$0, 93(%rsp)
	movl	%edx, 12(%rcx)
	movl	%eax, %edx
	je	.L170
	movl	176(%rsp), %edx
.L170:
	movq	72(%rsp), %rbx
	cmpb	$0, 94(%rsp)
	movl	%edx, 16(%rbx)
	movl	%eax, %edx
	je	.L171
	movl	180(%rsp), %edx
.L171:
	movq	72(%rsp), %rcx
	cmpb	$0, 95(%rsp)
	movl	%edx, 20(%rcx)
	je	.L172
	movl	184(%rsp), %eax
.L172:
	movq	72(%rsp), %rbx
	movl	%eax, 24(%rbx)
	movq	200(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L191
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L190:
	.cfi_restore_state
	vmovd	20(%rsp), %xmm6
	movb	%r9b, 89(%rsp)
	movb	%r8b, 90(%rsp)
	vpinsrd	$1, %r14d, %xmm6, %xmm1
	vmovd	12(%rsp), %xmm6
	movb	%cl, 91(%rsp)
	vpinsrd	$1, 16(%rsp), %xmm6, %xmm0
	vmovd	24(%rsp), %xmm6
	movb	%bl, 92(%rsp)
	movb	%r11b, 93(%rsp)
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movb	%r10b, 94(%rsp)
	vmovdqa	%xmm0, 160(%rsp)
	vpinsrd	$1, %r12d, %xmm6, %xmm0
	movl	%r13d, 184(%rsp)
	movb	%bpl, 95(%rsp)
	vmovq	%xmm0, 176(%rsp)
	jmp	.L156
.L174:
	xorl	%eax, %eax
	jmp	.L156
.L191:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1280:
	.size	_Z11mandel_par7PfS_iPi, .-_Z11mandel_par7PfS_iPi
	.p2align 4
	.globl	_Z11mandel_par8PfS_iPi
	.type	_Z11mandel_par8PfS_iPi, @function
_Z11mandel_par8PfS_iPi:
.LFB1281:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$256, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	vmovdqu	(%rdi), %xmm3
	vmovdqu	(%rsi), %xmm5
	vmovdqu	16(%rdi), %xmm4
	vmovdqu	16(%rsi), %xmm6
	movl	%edx, 12(%rsp)
	movq	%rcx, (%rsp)
	movq	%fs:40, %rax
	movq	%rax, 248(%rsp)
	xorl	%eax, %eax
	movq	$0, 120(%rsp)
	vmovdqa	%xmm3, 176(%rsp)
	vmovdqa	%xmm4, 192(%rsp)
	vmovdqa	%xmm5, 208(%rsp)
	vmovdqa	%xmm6, 224(%rsp)
	vmovdqa	%xmm0, 128(%rsp)
	vmovdqa	%xmm0, 144(%rsp)
	testl	%edx, %edx
	jle	.L213
	vmovss	228(%rsp), %xmm3
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	vmovss	208(%rsp), %xmm2
	movl	$0, 72(%rsp)
	xorl	%r11d, %r11d
	xorl	%r14d, %r14d
	vmovss	%xmm3, 108(%rsp)
	xorl	%r12d, %r12d
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	vmovss	200(%rsp), %xmm12
	vmovss	%xmm2, 100(%rsp)
	vmovss	236(%rsp), %xmm3
	xorl	%r10d, %r10d
	vmovss	216(%rsp), %xmm1
	movl	$0, 76(%rsp)
	vmovss	%xmm3, 104(%rsp)
	vmovaps	%xmm12, %xmm3
	vmovss	176(%rsp), %xmm8
	vmovss	180(%rsp), %xmm15
	movl	$0, 80(%rsp)
	vmovaps	%xmm1, %xmm12
	vmovss	212(%rsp), %xmm6
	movl	$0, 84(%rsp)
	vmovss	184(%rsp), %xmm13
	movl	$0, 88(%rsp)
	vmovss	188(%rsp), %xmm11
	movl	$0, 92(%rsp)
	vmovss	220(%rsp), %xmm2
	movl	$0, 96(%rsp)
	vmovss	192(%rsp), %xmm9
	vmovss	224(%rsp), %xmm4
	vmovss	196(%rsp), %xmm14
	vmovss	232(%rsp), %xmm5
	vmovss	204(%rsp), %xmm10
	jmp	.L194
	.p2align 4,,10
	.p2align 3
.L203:
	vaddss	%xmm11, %xmm11, %xmm11
	vaddss	%xmm8, %xmm8, %xmm8
	vmulss	100(%rsp), %xmm8, %xmm0
	addl	$1, %eax
	vaddss	%xmm15, %xmm15, %xmm15
	vaddss	%xmm13, %xmm13, %xmm13
	vmulss	%xmm2, %xmm11, %xmm2
	vsubss	44(%rsp), %xmm1, %xmm11
	vaddss	%xmm9, %xmm9, %xmm1
	vmulss	%xmm6, %xmm15, %xmm6
	vaddss	12(%rdi), %xmm11, %xmm11
	vaddss	12(%rsi), %xmm2, %xmm2
	vmulss	%xmm12, %xmm13, %xmm12
	vmovd	%xmm0, %edx
	vmovss	68(%rsp), %xmm0
	vsubss	64(%rsp), %xmm0, %xmm8
	vmulss	%xmm4, %xmm1, %xmm4
	vmovss	40(%rsp), %xmm1
	vsubss	36(%rsp), %xmm1, %xmm9
	vaddss	%xmm14, %xmm14, %xmm1
	vmulss	108(%rsp), %xmm1, %xmm1
	vmovd	%edx, %xmm0
	vaddss	(%rsi), %xmm0, %xmm0
	vaddss	20(%rsi), %xmm1, %xmm1
	vaddss	(%rdi), %xmm8, %xmm8
	vaddss	4(%rsi), %xmm6, %xmm6
	vaddss	8(%rsi), %xmm12, %xmm12
	vmovss	%xmm0, 100(%rsp)
	vaddss	16(%rdi), %xmm9, %xmm9
	vaddss	16(%rsi), %xmm4, %xmm4
	vmovss	%xmm1, 108(%rsp)
	vaddss	%xmm3, %xmm3, %xmm1
	vmovss	60(%rsp), %xmm0
	vmovss	24(%rsp), %xmm3
	vsubss	56(%rsp), %xmm0, %xmm15
	vmovss	52(%rsp), %xmm0
	vsubss	48(%rsp), %xmm0, %xmm13
	vmovss	32(%rsp), %xmm0
	vmulss	%xmm5, %xmm1, %xmm5
	vsubss	28(%rsp), %xmm0, %xmm14
	vsubss	20(%rsp), %xmm3, %xmm0
	vaddss	24(%rdi), %xmm0, %xmm3
	vaddss	%xmm10, %xmm10, %xmm0
	vmulss	104(%rsp), %xmm0, %xmm0
	vaddss	4(%rdi), %xmm15, %xmm15
	vaddss	8(%rdi), %xmm13, %xmm13
	vaddss	20(%rdi), %xmm14, %xmm14
	vaddss	24(%rsi), %xmm5, %xmm5
	vsubss	16(%rsp), %xmm7, %xmm10
	vaddss	28(%rsi), %xmm0, %xmm1
	vaddss	28(%rdi), %xmm10, %xmm10
	vmovss	%xmm1, 104(%rsp)
	cmpl	%eax, 12(%rsp)
	je	.L230
.L194:
	vmulss	%xmm8, %xmm8, %xmm7
	movl	96(%rsp), %edx
	testb	%r10b, %r10b
	movl	88(%rsp), %r15d
	vmovss	100(%rsp), %xmm1
	cmove	%eax, %edx
	vmulss	%xmm1, %xmm1, %xmm1
	movl	%edx, 96(%rsp)
	vmovss	%xmm7, 68(%rsp)
	vaddss	%xmm7, %xmm1, %xmm0
	vmovss	%xmm1, 64(%rsp)
	vcomiss	.LC0(%rip), %xmm0
	vmulss	%xmm15, %xmm15, %xmm7
	vmulss	%xmm6, %xmm6, %xmm1
	seta	%dl
	orl	%edx, %r10d
	movl	92(%rsp), %edx
	testb	%r9b, %r9b
	cmove	%eax, %edx
	vmovss	%xmm7, 60(%rsp)
	vaddss	%xmm7, %xmm1, %xmm0
	vmovss	%xmm1, 56(%rsp)
	vmulss	%xmm13, %xmm13, %xmm7
	vcomiss	.LC0(%rip), %xmm0
	movl	%edx, 92(%rsp)
	vmulss	%xmm12, %xmm12, %xmm0
	vmulss	%xmm11, %xmm11, %xmm1
	seta	%dl
	orl	%edx, %r9d
	movl	%r10d, %edx
	andl	%r9d, %edx
	testb	%r8b, %r8b
	vmovss	%xmm7, 52(%rsp)
	cmove	%eax, %r15d
	vmovss	%xmm0, 48(%rsp)
	vaddss	%xmm7, %xmm0, %xmm0
	vcomiss	.LC0(%rip), %xmm0
	vmulss	%xmm2, %xmm2, %xmm7
	movl	%r15d, 88(%rsp)
	seta	%r15b
	orl	%r15d, %r8d
	movl	84(%rsp), %r15d
	andl	%r8d, %edx
	testb	%cl, %cl
	vaddss	%xmm7, %xmm1, %xmm0
	cmove	%eax, %r15d
	vmovss	%xmm7, 44(%rsp)
	vcomiss	.LC0(%rip), %xmm0
	vmulss	%xmm4, %xmm4, %xmm7
	movl	%r15d, 84(%rsp)
	vmulss	%xmm9, %xmm9, %xmm0
	seta	%r15b
	orl	%r15d, %ecx
	movl	80(%rsp), %r15d
	andl	%ecx, %edx
	testb	%r12b, %r12b
	vmovss	%xmm7, 36(%rsp)
	cmove	%eax, %r15d
	vmovss	%xmm0, 40(%rsp)
	vaddss	%xmm0, %xmm7, %xmm0
	vmovss	108(%rsp), %xmm7
	vcomiss	.LC0(%rip), %xmm0
	movl	%r15d, 80(%rsp)
	vmulss	%xmm7, %xmm7, %xmm7
	vmulss	%xmm14, %xmm14, %xmm0
	seta	%r15b
	orl	%r15d, %r12d
	andl	%r12d, %edx
	testb	%bl, %bl
	cmove	%eax, %r14d
	vmovss	%xmm7, 28(%rsp)
	vmovss	%xmm0, 32(%rsp)
	vaddss	%xmm0, %xmm7, %xmm0
	vmulss	%xmm5, %xmm5, %xmm7
	vcomiss	.LC0(%rip), %xmm0
	vmulss	%xmm3, %xmm3, %xmm0
	seta	%r15b
	orl	%r15d, %ebx
	movl	76(%rsp), %r15d
	andl	%ebx, %edx
	testb	%r11b, %r11b
	cmove	%eax, %r15d
	vmovss	%xmm0, 24(%rsp)
	movl	%r15d, 76(%rsp)
	vmovss	%xmm7, 20(%rsp)
	vaddss	%xmm0, %xmm7, %xmm7
	vmovss	104(%rsp), %xmm0
	vcomiss	.LC0(%rip), %xmm7
	vmulss	%xmm10, %xmm10, %xmm7
	vmulss	%xmm0, %xmm0, %xmm0
	seta	%r15b
	orl	%r15d, %r11d
	movl	72(%rsp), %r15d
	testb	%r13b, %r13b
	cmove	%eax, %r15d
	vmovss	%xmm0, 16(%rsp)
	vaddss	%xmm0, %xmm7, %xmm0
	vcomiss	.LC0(%rip), %xmm0
	movl	%r15d, 72(%rsp)
	seta	%r15b
	orl	%r15d, %r13d
	testb	%r11b, %dl
	je	.L203
	testb	%r13b, %r13b
	je	.L203
	movl	96(%rsp), %ebx
	movb	%cl, 123(%rsp)
	movl	80(%rsp), %ecx
	movb	%r10b, 120(%rsp)
	movl	%ebx, 128(%rsp)
	movl	92(%rsp), %ebx
	movl	%ecx, 144(%rsp)
	movl	76(%rsp), %ecx
	movl	%ebx, 132(%rsp)
	movl	88(%rsp), %ebx
	movl	%ecx, 152(%rsp)
	movl	72(%rsp), %ecx
	movl	%ebx, 136(%rsp)
	movl	84(%rsp), %ebx
	movb	%r9b, 121(%rsp)
	movb	%r8b, 122(%rsp)
	movl	%ebx, 140(%rsp)
	movl	%r14d, 148(%rsp)
	movl	%ecx, 156(%rsp)
	movl	$16843009, 124(%rsp)
.L193:
	cmpb	$0, 120(%rsp)
	movl	%eax, %edx
	je	.L204
	movl	128(%rsp), %edx
.L204:
	movq	(%rsp), %rbx
	cmpb	$0, 121(%rsp)
	movl	%edx, (%rbx)
	movl	%eax, %edx
	je	.L205
	movl	132(%rsp), %edx
.L205:
	movq	(%rsp), %rbx
	cmpb	$0, 122(%rsp)
	movl	%edx, 4(%rbx)
	movl	%eax, %edx
	je	.L206
	movl	136(%rsp), %edx
.L206:
	movq	(%rsp), %rbx
	cmpb	$0, 123(%rsp)
	movl	%edx, 8(%rbx)
	movl	%eax, %edx
	je	.L207
	movl	140(%rsp), %edx
.L207:
	movq	(%rsp), %rcx
	cmpb	$0, 124(%rsp)
	movl	%edx, 12(%rcx)
	movl	%eax, %edx
	je	.L208
	movl	144(%rsp), %edx
.L208:
	movq	(%rsp), %rbx
	cmpb	$0, 125(%rsp)
	movl	%edx, 16(%rbx)
	movl	%eax, %edx
	je	.L209
	movl	148(%rsp), %edx
.L209:
	movq	(%rsp), %rcx
	cmpb	$0, 126(%rsp)
	movl	%edx, 20(%rcx)
	movl	%eax, %edx
	je	.L210
	movl	152(%rsp), %edx
.L210:
	movq	(%rsp), %rbx
	cmpb	$0, 127(%rsp)
	movl	%edx, 24(%rbx)
	je	.L211
	movl	156(%rsp), %eax
.L211:
	movq	(%rsp), %rcx
	movl	%eax, 28(%rcx)
	movq	248(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L231
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L230:
	.cfi_restore_state
	vmovd	80(%rsp), %xmm4
	vmovd	76(%rsp), %xmm3
	movb	%r10b, 120(%rsp)
	vmovd	88(%rsp), %xmm5
	vmovd	96(%rsp), %xmm6
	movb	%r9b, 121(%rsp)
	vpinsrd	$1, 72(%rsp), %xmm3, %xmm0
	vpinsrd	$1, %r14d, %xmm4, %xmm1
	movb	%r8b, 122(%rsp)
	vpinsrd	$1, 84(%rsp), %xmm5, %xmm2
	movb	%cl, 123(%rsp)
	vpunpcklqdq	%xmm0, %xmm1, %xmm1
	vpinsrd	$1, 92(%rsp), %xmm6, %xmm0
	movb	%r12b, 124(%rsp)
	movb	%bl, 125(%rsp)
	vpunpcklqdq	%xmm2, %xmm0, %xmm0
	movb	%r11b, 126(%rsp)
	vinserti128	$0x1, %xmm1, %ymm0, %ymm0
	movb	%r13b, 127(%rsp)
	vmovdqa	%ymm0, 128(%rsp)
	vzeroupper
	jmp	.L193
.L213:
	xorl	%eax, %eax
	jmp	.L193
.L231:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1281:
	.size	_Z11mandel_par8PfS_iPi, .-_Z11mandel_par8PfS_iPi
	.p2align 4
	.globl	_Z10mandel_refffi
	.type	_Z10mandel_refffi, @function
_Z10mandel_refffi:
.LFB1273:
	.cfi_startproc
	endbr64
	testl	%edi, %edi
	jle	.L235
	vmovaps	%xmm1, %xmm3
	vmovaps	%xmm0, %xmm2
	xorl	%eax, %eax
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L238:
	vaddss	%xmm2, %xmm2, %xmm2
	vsubss	%xmm5, %xmm4, %xmm4
	addl	$1, %eax
	vmulss	%xmm3, %xmm2, %xmm3
	vaddss	%xmm0, %xmm4, %xmm2
	vaddss	%xmm3, %xmm1, %xmm3
	cmpl	%eax, %edi
	je	.L237
.L234:
	vmulss	%xmm2, %xmm2, %xmm4
	vmulss	%xmm3, %xmm3, %xmm5
	vaddss	%xmm5, %xmm4, %xmm6
	vcomiss	.LC0(%rip), %xmm6
	jbe	.L238
	ret
	.p2align 4,,10
	.p2align 3
.L237:
	ret
.L235:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1273:
	.size	_Z10mandel_refffi, .-_Z10mandel_refffi
	.p2align 4
	.globl	_Z16mandelbrotSerialPFiffiEffffiiiiiPi
	.type	_Z16mandelbrotSerialPFiffiEffffiiiiiPi, @function
_Z16mandelbrotSerialPFiffiEffffiiiiiPi:
.LFB1282:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vxorps	%xmm7, %xmm7, %xmm7
	vsubss	%xmm0, %xmm2, %xmm2
	vsubss	%xmm1, %xmm3, %xmm3
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	addl	%ecx, %r8d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	vmovss	%xmm0, 16(%rsp)
	vcvtsi2ssl	%esi, %xmm7, %xmm0
	movl	%esi, 24(%rsp)
	movl	%ecx, 20(%rsp)
	movl	%r8d, 32(%rsp)
	vdivss	%xmm0, %xmm2, %xmm2
	vcvtsi2ssl	%edx, %xmm7, %xmm0
	vmovss	%xmm1, 40(%rsp)
	vdivss	%xmm0, %xmm3, %xmm3
	vmovss	%xmm2, 12(%rsp)
	vmovss	%xmm3, 36(%rsp)
	cmpl	%r8d, %ecx
	jge	.L245
	imull	%esi, %ecx
	movl	%esi, %eax
	movq	%rdi, %r13
	movl	%r9d, %r14d
	subl	$1, %eax
	xorl	%r12d, %r12d
	movl	%eax, 44(%rsp)
	movl	%ecx, 28(%rsp)
	.p2align 4,,10
	.p2align 3
.L241:
	movl	24(%rsp), %eax
	testl	%eax, %eax
	jle	.L244
	vxorps	%xmm7, %xmm7, %xmm7
	movslq	28(%rsp), %rax
	movl	44(%rsp), %ebp
	xorl	%r15d, %r15d
	vcvtsi2ssl	20(%rsp), %xmm7, %xmm1
	vmulss	36(%rsp), %xmm1, %xmm1
	movq	112(%rsp), %rdx
	vaddss	40(%rsp), %xmm1, %xmm1
	leaq	(%rdx,%rax,4), %rbx
	.p2align 4,,10
	.p2align 3
.L242:
	vxorps	%xmm4, %xmm4, %xmm4
	vmovss	%xmm1, 8(%rsp)
	movl	%r14d, %edi
	vcvtsi2ssl	%r15d, %xmm4, %xmm0
	vmulss	12(%rsp), %xmm0, %xmm0
	vaddss	16(%rsp), %xmm0, %xmm0
	call	*%r13
	vmovss	8(%rsp), %xmm1
	movl	%eax, (%rbx,%r15,4)
	movslq	%eax, %rcx
	movq	%r15, %rax
	addq	$1, %r15
	addq	%rcx, %r12
	cmpq	%rax, %rbp
	jne	.L242
.L244:
	addl	$1, 20(%rsp)
	movl	24(%rsp), %esi
	movl	20(%rsp), %eax
	addl	%esi, 28(%rsp)
	cmpl	%eax, 32(%rsp)
	jne	.L241
.L239:
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L245:
	.cfi_restore_state
	xorl	%r12d, %r12d
	jmp	.L239
	.cfi_endproc
.LFE1282:
	.size	_Z16mandelbrotSerialPFiffiEffffiiiiiPi, .-_Z16mandelbrotSerialPFiffiEffffiiiiiPi
	.p2align 4
	.globl	_Z18mandelbrotParallelPFvPfS_iPiEiffffiiiiiS0_
	.type	_Z18mandelbrotParallelPFvPfS_iPiEiffffiiiiiS0_, @function
_Z18mandelbrotParallelPFvPfS_iPiEiffffiiiiiS0_:
.LFB1283:
	.cfi_startproc
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	vxorps	%xmm4, %xmm4, %xmm4
	addl	%r8d, %r9d
	pushq	-8(%r10)
	vsubss	%xmm0, %xmm2, %xmm2
	vsubss	%xmm1, %xmm3, %xmm3
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$224, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	vmovss	%xmm0, -80(%rbp)
	movl	(%r10), %r15d
	vcvtsi2ssl	%edx, %xmm4, %xmm0
	movq	8(%r10), %rax
	movq	%rdi, -184(%rbp)
	movl	%edx, -164(%rbp)
	movl	%r8d, -84(%rbp)
	vdivss	%xmm0, %xmm2, %xmm7
	movq	%rax, -232(%rbp)
	vcvtsi2ssl	%ecx, %xmm4, %xmm0
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	%r9d, -224(%rbp)
	subl	%esi, %r9d
	movl	%r9d, -208(%rbp)
	vmovss	%xmm7, -76(%rbp)
	vdivss	%xmm0, %xmm3, %xmm7
	cmpl	%r9d, %r8d
	jg	.L286
	movl	%edx, %ecx
	movl	%edx, %edi
	movslq	%esi, %rax
	movl	%esi, %r9d
	imull	%esi, %ecx
	movl	%r15d, -168(%rbp)
	xorl	%r12d, %r12d
	movl	%esi, %r14d
	imull	%edx, %r8d
	movl	%esi, %edx
	leaq	15(,%rax,4), %rax
	andl	$-8, %r9d
	shrl	$3, %edx
	vmovdqa	.LC2(%rip), %ymm3
	movl	%r9d, %r11d
	movl	%ecx, -220(%rbp)
	leal	-1(%rsi), %ecx
	leal	-1(%rdx), %ebx
	movl	%ecx, %edx
	movl	%ecx, -120(%rbp)
	leaq	4(,%rdx,4), %rcx
	movslq	%edi, %rdx
	movq	%rax, %rdi
	andl	$4080, %eax
	movq	%rax, -248(%rbp)
	andq	$-16, %rdi
	subq	$8, %rax
	leaq	0(,%rdx,4), %r10
	movl	%r8d, -204(%rbp)
	movq	%r10, %r13
	movq	%rbx, -240(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%rdi, -216(%rbp)
	movq	%rax, -256(%rbp)
	.p2align 4,,10
	.p2align 3
.L274:
	movq	-216(%rbp), %rdx
	movq	%rsp, %rax
	movq	%rsp, -200(%rbp)
	andq	$-4096, %rdx
	subq	%rdx, %rax
	cmpq	%rax, %rsp
	je	.L251
.L311:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L311
.L251:
	movq	-248(%rbp), %rax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L252
	movq	-256(%rbp), %rax
	orq	$0, (%rsp,%rax)
.L252:
	movq	-216(%rbp), %rdx
	movq	%rsp, %rax
	movq	%rsp, %r10
	andq	$-4096, %rdx
	subq	%rdx, %rax
	cmpq	%rax, %rsp
	je	.L254
.L312:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L312
.L254:
	movq	-248(%rbp), %rax
	subq	%rax, %rsp
	testq	%rax, %rax
	jne	.L313
.L255:
	movq	-216(%rbp), %rdx
	movq	%rsp, %rax
	movq	%rsp, %rbx
	andq	$-4096, %rdx
	subq	%rdx, %rax
	cmpq	%rax, %rsp
	je	.L257
.L314:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L314
.L257:
	movq	-248(%rbp), %rax
	subq	%rax, %rsp
	testq	%rax, %rax
	jne	.L315
	movl	-164(%rbp), %eax
	movq	%rsp, %rcx
	testl	%eax, %eax
	jle	.L259
.L319:
	movq	-232(%rbp), %rdi
	movslq	-204(%rbp), %rax
	vshufps	$0, %xmm7, %xmm7, %xmm6
	xorl	%r9d, %r9d
	vbroadcastss	-84(%rbp), %xmm5
	vmovaps	%xmm6, -160(%rbp)
	leaq	(%rdi,%rax,4), %rax
	movq	-176(%rbp), %rdi
	movq	%rax, -72(%rbp)
	movq	-240(%rbp), %rax
	vmovdqa	%xmm5, -144(%rbp)
	leaq	1(%rax), %r15
	movq	%rbx, %rax
	salq	$5, %r15
	leaq	(%r10,%r15), %r8
	addq	%rbx, %r15
	leaq	(%rcx,%rdi), %rbx
	movq	%r15, -192(%rbp)
	movq	%rax, %r15
	.p2align 4,,10
	.p2align 3
.L260:
	testl	%r14d, %r14d
	jle	.L316
	vcvtsi2ssl	%r9d, %xmm4, %xmm0
	vmulss	-76(%rbp), %xmm0, %xmm0
	cmpl	$6, -120(%rbp)
	vaddss	-80(%rbp), %xmm0, %xmm0
	jbe	.L287
	vbroadcastss	%xmm0, %ymm2
	movq	%r10, %rax
	.p2align 4,,10
	.p2align 3
.L262:
	vmovups	%ymm2, (%rax)
	addq	$32, %rax
	cmpq	%r8, %rax
	jne	.L262
	cmpl	%r14d, %r11d
	je	.L263
	movl	%r11d, %edx
	movl	%r11d, %eax
.L261:
	movl	%r14d, %esi
	subl	%edx, %esi
	leal	-1(%rsi), %edi
	cmpl	$2, %edi
	jbe	.L264
	vshufps	$0, %xmm0, %xmm0, %xmm2
	vmovups	%xmm2, (%r10,%rdx,4)
	movl	%esi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %esi
	je	.L265
.L264:
	movslq	%eax, %rdx
	leal	1(%rax), %esi
	leaq	(%r10,%rdx,4), %rdx
	vmovss	%xmm0, (%rdx)
	cmpl	%esi, %r14d
	jle	.L265
	addl	$2, %eax
	vmovss	%xmm0, 4(%rdx)
	cmpl	%r14d, %eax
	jge	.L265
	vmovss	%xmm0, 8(%rdx)
.L265:
	cmpl	$6, -120(%rbp)
	jbe	.L288
.L263:
	vpbroadcastd	-84(%rbp), %ymm8
	vmovdqa	.LC1(%rip), %ymm2
	vbroadcastss	%xmm7, %ymm6
	movq	%r15, %rax
	movq	-192(%rbp), %rdx
	vbroadcastss	%xmm1, %ymm5
	.p2align 4,,10
	.p2align 3
.L267:
	vmovdqa	%ymm2, %ymm0
	addq	$32, %rax
	vpaddd	%ymm3, %ymm2, %ymm2
	vpaddd	%ymm0, %ymm8, %ymm0
	vcvtdq2ps	%ymm0, %ymm0
	vmulps	%ymm6, %ymm0, %ymm0
	vaddps	%ymm5, %ymm0, %ymm0
	vmovups	%ymm0, -32(%rax)
	cmpq	%rdx, %rax
	jne	.L267
	cmpl	%r14d, %r11d
	je	.L268
	movl	%r11d, %edx
	movl	%r11d, %eax
.L266:
	movl	%r14d, %esi
	subl	%edx, %esi
	leal	-1(%rsi), %edi
	cmpl	$2, %edi
	jbe	.L269
	vmovd	%eax, %xmm6
	vshufps	$0, %xmm1, %xmm1, %xmm2
	vpshufd	$0, %xmm6, %xmm0
	vpaddd	.LC3(%rip), %xmm0, %xmm0
	vpaddd	-144(%rbp), %xmm0, %xmm0
	vcvtdq2ps	%xmm0, %xmm0
	vmulps	-160(%rbp), %xmm0, %xmm0
	vaddps	%xmm2, %xmm0, %xmm0
	vmovups	%xmm0, (%r15,%rdx,4)
	movl	%esi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	cmpl	%edx, %esi
	je	.L268
.L269:
	movl	-84(%rbp), %edi
	movslq	%eax, %rdx
	leaq	(%r15,%rdx,4), %rdx
	leal	(%rdi,%rax), %esi
	vcvtsi2ssl	%esi, %xmm4, %xmm0
	leal	1(%rax), %esi
	vmulss	%xmm7, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rdx)
	cmpl	%esi, %r14d
	jle	.L268
	addl	%edi, %esi
	addl	$2, %eax
	vcvtsi2ssl	%esi, %xmm4, %xmm0
	vmulss	%xmm7, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 4(%rdx)
	cmpl	%eax, %r14d
	jle	.L268
	addl	%edi, %eax
	vcvtsi2ssl	%eax, %xmm4, %xmm0
	vmulss	%xmm7, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 8(%rdx)
.L268:
	movq	-176(%rbp), %rdx
	xorl	%esi, %esi
	movq	%rcx, %rdi
	movq	%r10, -96(%rbp)
	movq	%r8, -128(%rbp)
	movl	%r11d, -116(%rbp)
	movl	%r9d, -112(%rbp)
	vmovss	%xmm1, -108(%rbp)
	vmovss	%xmm7, -88(%rbp)
	vzeroupper
	call	memset@PLT
	movl	-168(%rbp), %edx
	movq	%r15, %rsi
	movq	-96(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rax, -104(%rbp)
	movq	-184(%rbp), %rax
	call	*%rax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rsi
	vxorps	%xmm4, %xmm4, %xmm4
	movl	-112(%rbp), %r9d
	movl	-116(%rbp), %r11d
	movq	-128(%rbp), %r8
	movq	-96(%rbp), %r10
	movq	%rcx, %rdx
	vmovdqa	.LC2(%rip), %ymm3
	vmovss	-108(%rbp), %xmm1
	vmovss	-88(%rbp), %xmm7
	.p2align 4,,10
	.p2align 3
.L271:
	movslq	(%rdx), %rax
	addq	$4, %rdx
	movl	%eax, (%rsi)
	addq	%rax, %r12
	addq	%r13, %rsi
	cmpq	%rbx, %rdx
	jne	.L271
.L284:
	addq	$4, -72(%rbp)
	addl	$1, %r9d
	cmpl	%r9d, -164(%rbp)
	jne	.L260
.L259:
	addl	%r14d, -84(%rbp)
	movl	-220(%rbp), %ecx
	movq	-200(%rbp), %rsp
	addl	%ecx, -204(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jle	.L274
	movl	-168(%rbp), %r15d
	vzeroupper
	movl	%eax, %r9d
.L249:
	movl	-224(%rbp), %r11d
	cmpl	%r9d, %r11d
	jle	.L248
	movl	-164(%rbp), %r10d
	movl	%r9d, %r8d
	movq	-232(%rbp), %rbx
	movslq	%r15d, %rdi
	imull	%r10d, %r8d
	leal	-1(%r10), %esi
	.p2align 4,,10
	.p2align 3
.L276:
	testl	%r10d, %r10d
	jle	.L283
	vcvtsi2ssl	%r9d, %xmm4, %xmm9
	movslq	%r8d, %rax
	xorl	%edx, %edx
	leaq	(%rbx,%rax,4), %rcx
	vmulss	%xmm7, %xmm9, %xmm9
	vaddss	%xmm1, %xmm9, %xmm9
	.p2align 4,,10
	.p2align 3
.L281:
	vcvtsi2ssl	%edx, %xmm4, %xmm8
	vmulss	-76(%rbp), %xmm8, %xmm8
	vaddss	-80(%rbp), %xmm8, %xmm8
	testl	%r15d, %r15d
	jle	.L289
	vmovaps	%xmm9, %xmm2
	vmovaps	%xmm8, %xmm0
	xorl	%eax, %eax
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L307:
	vaddss	%xmm0, %xmm0, %xmm0
	vsubss	%xmm5, %xmm3, %xmm3
	addl	$1, %eax
	vmulss	%xmm2, %xmm0, %xmm2
	vaddss	%xmm8, %xmm3, %xmm0
	vaddss	%xmm2, %xmm9, %xmm2
	cmpl	%eax, %r15d
	je	.L317
.L280:
	vmulss	%xmm0, %xmm0, %xmm3
	vmulss	%xmm2, %xmm2, %xmm5
	vaddss	%xmm5, %xmm3, %xmm6
	vcomiss	.LC0(%rip), %xmm6
	jbe	.L307
	movslq	%eax, %r13
	addq	%r13, %r12
.L277:
	movl	%eax, (%rcx,%rdx,4)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %rsi
	je	.L283
.L290:
	movq	%rax, %rdx
	jmp	.L281
.L313:
	movq	-256(%rbp), %rax
	orq	$0, (%rsp,%rax)
	jmp	.L255
	.p2align 4,,10
	.p2align 3
.L317:
	movl	%eax, (%rcx,%rdx,4)
	addq	%rdi, %r12
	leaq	1(%rdx), %rax
	cmpq	%rdx, %rsi
	jne	.L290
.L283:
	addl	$1, %r9d
	addl	%r10d, %r8d
	cmpl	%r9d, %r11d
	jne	.L276
.L248:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L318
	leaq	-48(%rbp), %rsp
	movq	%r12, %rax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L316:
	.cfi_restore_state
	movl	-168(%rbp), %edx
	movq	%r15, %rsi
	movq	%r10, %rdi
	movq	%r8, -128(%rbp)
	movq	-184(%rbp), %rax
	movl	%r11d, -116(%rbp)
	movl	%r9d, -112(%rbp)
	movq	%rcx, -104(%rbp)
	movq	%r10, -96(%rbp)
	vmovss	%xmm1, -108(%rbp)
	vmovss	%xmm7, -88(%rbp)
	vzeroupper
	call	*%rax
	movq	-96(%rbp), %r10
	movq	-104(%rbp), %rcx
	vxorps	%xmm4, %xmm4, %xmm4
	vmovss	-88(%rbp), %xmm7
	vmovss	-108(%rbp), %xmm1
	vmovdqa	.LC2(%rip), %ymm3
	movl	-112(%rbp), %r9d
	movl	-116(%rbp), %r11d
	movq	-128(%rbp), %r8
	jmp	.L284
.L287:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L261
.L288:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L266
.L289:
	xorl	%eax, %eax
	jmp	.L277
.L315:
	movq	-256(%rbp), %rax
	orq	$0, (%rsp,%rax)
	movl	-164(%rbp), %eax
	movq	%rsp, %rcx
	testl	%eax, %eax
	jg	.L319
	jmp	.L259
.L286:
	xorl	%r12d, %r12d
	movl	%r8d, %r9d
	jmp	.L249
.L318:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1283:
	.size	_Z18mandelbrotParallelPFvPfS_iPiEiffffiiiiiS0_, .-_Z18mandelbrotParallelPFvPfS_iPiEiffffiiiiiS0_
	.globl	par_funs
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"ILP parallelism x1"
.LC5:
	.string	"ILP parallelism x2"
.LC6:
	.string	"ILP parallelism x3"
.LC7:
	.string	"ILP parallelism x4"
.LC8:
	.string	"ILP parallelism x5"
.LC9:
	.string	"ILP parallelism x6"
.LC10:
	.string	"ILP parallelism x7"
.LC11:
	.string	"ILP parallelism x8"
.LC12:
	.string	""
	.section	.data.rel.local,"aw"
	.align 32
	.type	par_funs, @object
	.size	par_funs, 216
par_funs:
	.long	1
	.zero	4
	.quad	_Z11mandel_par1PfS_iPi
	.quad	.LC4
	.long	2
	.zero	4
	.quad	_Z11mandel_par2PfS_iPi
	.quad	.LC5
	.long	3
	.zero	4
	.quad	_Z11mandel_par3PfS_iPi
	.quad	.LC6
	.long	4
	.zero	4
	.quad	_Z11mandel_par4PfS_iPi
	.quad	.LC7
	.long	5
	.zero	4
	.quad	_Z11mandel_par5PfS_iPi
	.quad	.LC8
	.long	6
	.zero	4
	.quad	_Z11mandel_par6PfS_iPi
	.quad	.LC9
	.long	7
	.zero	4
	.quad	_Z11mandel_par7PfS_iPi
	.quad	.LC10
	.long	8
	.zero	4
	.quad	_Z11mandel_par8PfS_iPi
	.quad	.LC11
	.long	0
	.zero	4
	.quad	0
	.quad	.LC12
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1082130432
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC1:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.align 32
.LC2:
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.set	.LC3,.LC1
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
