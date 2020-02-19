	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	__Z11init_bufferiRNSt3__126linear_congruential_engineIjLj48271ELj0ELj2147483647EEERNS_6vectorIcNS_9allocatorIcEEEE ## -- Begin function _Z11init_bufferiRNSt3__126linear_congruential_engineIjLj48271ELj0ELj2147483647EEERNS_6vectorIcNS_9allocatorIcEEEE
	.p2align	4, 0x90
__Z11init_bufferiRNSt3__126linear_congruential_engineIjLj48271ELj0ELj2147483647EEERNS_6vectorIcNS_9allocatorIcEEEE: ## @_Z11init_bufferiRNSt3__126linear_congruential_engineIjLj48271ELj0ELj2147483647EEERNS_6vectorIcNS_9allocatorIcEEEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %rbx
	movl	(%rsi), %eax
	movl	$3163493265, %ecx       ## imm = 0xBC8F1391
	imulq	%rax, %rcx
	shrq	$47, %rcx
	imull	$44488, %ecx, %edx      ## imm = 0xADC8
	subl	%edx, %eax
	imull	$48271, %eax, %eax      ## imm = 0xBC8F
	imull	$3399, %ecx, %ecx       ## imm = 0xD47
	xorl	%r13d, %r13d
	subl	%ecx, %eax
	movl	$2147483647, %ecx       ## imm = 0x7FFFFFFF
	cmovael	%r13d, %ecx
	addl	%eax, %ecx
	movl	%ecx, (%rsi)
	movabsq	$523986010209, %rax     ## imm = 0x7A00000061
	movq	%rax, -72(%rbp)
	testl	%edi, %edi
	jle	LBB0_14
## %bb.1:
	movq	%rsi, %r14
	movl	%edi, %r12d
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	movl	%edi, -44(%rbp)         ## 4-byte Spill
	movq	%rbx, -56(%rbp)         ## 8-byte Spill
	jmp	LBB0_2
LBB0_7:                                 ##   in Loop: Header=BB0_2 Depth=1
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	jmp	LBB0_9
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	leaq	-72(%rbp), %rdi
	movq	%r14, %rsi
	movq	%rdi, %rdx
	callq	__ZNSt3__124uniform_int_distributionIiEclINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEEiRT_RKNS1_10param_typeE
	movl	%eax, %edi
	movq	8(%rbx), %r15
	movq	16(%rbx), %rax
	cmpq	%rax, %r15
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	movb	%dil, (%r15)
	incq	8(%rbx)
	incl	%r13d
	cmpl	%r12d, %r13d
	jl	LBB0_2
	jmp	LBB0_14
	.p2align	4, 0x90
LBB0_4:                                 ##   in Loop: Header=BB0_2 Depth=1
	movq	(%rbx), %rsi
	subq	%rsi, %r15
	movq	%r15, %rcx
	incq	%rcx
	js	LBB0_15
## %bb.5:                               ##   in Loop: Header=BB0_2 Depth=1
	subq	%rsi, %rax
	movabsq	$9223372036854775807, %r12 ## imm = 0x7FFFFFFFFFFFFFFF
	movabsq	$4611686018427387902, %rdx ## imm = 0x3FFFFFFFFFFFFFFE
	cmpq	%rdx, %rax
	ja	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_2 Depth=1
	addq	%rax, %rax
	cmpq	%rcx, %rax
	cmovbq	%rcx, %rax
	movq	%rax, %r12
	testq	%rax, %rax
	je	LBB0_7
LBB0_8:                                 ##   in Loop: Header=BB0_2 Depth=1
	movl	%edi, %r14d
	movq	%r12, %rdi
	movq	%rsi, %rbx
	callq	__Znwm
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movq	%rax, %r14
LBB0_9:                                 ##   in Loop: Header=BB0_2 Depth=1
	addq	%r14, %r12
	movb	%dil, (%r14,%r15)
	leaq	1(%r14,%r15), %rax
	testq	%r15, %r15
	jle	LBB0_11
## %bb.10:                              ##   in Loop: Header=BB0_2 Depth=1
	movq	%r14, %rdi
	movq	%rsi, %rbx
	movq	%r15, %rdx
	movq	%rax, %r15
	callq	_memcpy
	movq	%r15, %rax
	movq	%rbx, %rsi
LBB0_11:                                ##   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rbx         ## 8-byte Reload
	movq	%r14, (%rbx)
	movq	%rax, 8(%rbx)
	movq	%r12, 16(%rbx)
	testq	%rsi, %rsi
	movq	-64(%rbp), %r14         ## 8-byte Reload
	movl	-44(%rbp), %r12d        ## 4-byte Reload
	je	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, %rdi
	callq	__ZdlPv
LBB0_13:                                ##   in Loop: Header=BB0_2 Depth=1
	incl	%r13d
	cmpl	%r12d, %r13d
	jl	LBB0_2
LBB0_14:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_15:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI1_0:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -88(%rbp)
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$5, %edx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	leaq	L_.str.1(%rip), %rsi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	leaq	L_.str.2(%rip), %rsi
	movl	$7, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -80(%rbp)
	movq	$0, -64(%rbp)
	movl	_BUFFER_POWER_MIN(%rip), %edi
	cmpl	_BUFFER_POWER_MAX(%rip), %edi
	jg	LBB1_11
## %bb.1:
	leaq	-88(%rbp), %r12
	leaq	-96(%rbp), %r14
	.p2align	4, 0x90
LBB1_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_5 Depth 2
                                        ##     Child Loop BB1_16 Depth 2
                                        ##     Child Loop BB1_20 Depth 2
	movsd	LCPI1_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movq	%rdi, -128(%rbp)        ## 8-byte Spill
                                        ## kill: def $edi killed $edi killed $rdi
	callq	_ldexp
	cvttsd2si	%xmm0, %r15d
Ltmp0:
	movl	%r15d, %edi
	movq	%r12, %rsi
	leaq	-80(%rbp), %rdx
	callq	__Z11init_bufferiRNSt3__126linear_congruential_engineIjLj48271ELj0ELj2147483647EEERNS_6vectorIcNS_9allocatorIcEEEE
Ltmp1:
## %bb.3:                               ##   in Loop: Header=BB1_2 Depth=1
	leal	-1(%r15), %eax
	movl	$0, -96(%rbp)
	movl	%eax, -92(%rbp)
	testl	%r15d, %r15d
	jle	LBB1_14
## %bb.4:                               ##   in Loop: Header=BB1_2 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB1_5:                                 ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
Ltmp3:
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	__ZNSt3__124uniform_int_distributionIiEclINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEEiRT_RKNS1_10param_typeE
Ltmp4:
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=2
	cltq
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	subq	%rcx, %rdx
	cmpq	%rax, %rdx
	jbe	LBB1_7
## %bb.13:                              ##   in Loop: Header=BB1_5 Depth=2
	movzbl	(%rcx,%rax), %eax
	movb	%al, -49(%rbp)
	incl	%ebx
	cmpl	%r15d, %ebx
	jl	LBB1_5
LBB1_14:                                ##   in Loop: Header=BB1_2 Depth=1
	movq	%rsp, -120(%rbp)        ## 8-byte Spill
	movl	_testingSize(%rip), %eax
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %r13
	cmpl	$0, _testingSize(%rip)
	jle	LBB1_18
## %bb.15:                              ##   in Loop: Header=BB1_2 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB1_16:                                ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
Ltmp9:
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	__ZNSt3__124uniform_int_distributionIiEclINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEEiRT_RKNS1_10param_typeE
Ltmp10:
## %bb.17:                              ##   in Loop: Header=BB1_16 Depth=2
	movl	%eax, (%r13,%rbx,4)
	incq	%rbx
	movslq	_testingSize(%rip), %rax
	cmpq	%rax, %rbx
	jl	LBB1_16
LBB1_18:                                ##   in Loop: Header=BB1_2 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	movslq	_testingSize(%rip), %rcx
	testq	%rcx, %rcx
	jle	LBB1_27
## %bb.19:                              ##   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdi
	subq	%rsi, %rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB1_20:                                ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movslq	(%r13,%rbx,4), %rax
	cmpq	%rax, %rdi
	jbe	LBB1_21
## %bb.26:                              ##   in Loop: Header=BB1_20 Depth=2
	movzbl	(%rsi,%rax), %eax
	movb	%al, -49(%rbp)
	incq	%rbx
	cmpq	%rcx, %rbx
	jl	LBB1_20
LBB1_27:                                ##   in Loop: Header=BB1_2 Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r13
	xorps	%xmm0, %xmm0
	cvtsi2sdl	_testingSize(%rip), %xmm0
	movsd	%xmm0, -104(%rbp)       ## 8-byte Spill
Ltmp15:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movl	%r15d, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp16:
## %bb.28:                              ##   in Loop: Header=BB1_2 Depth=1
Ltmp17:
	movl	$6, %edx
	movq	%rax, %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp18:
## %bb.29:                              ##   in Loop: Header=BB1_2 Depth=1
	subq	-112(%rbp), %r13        ## 8-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r13, %xmm0
	divsd	-104(%rbp), %xmm0       ## 8-byte Folded Reload
Ltmp19:
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp20:
## %bb.30:                              ##   in Loop: Header=BB1_2 Depth=1
	movb	$10, -49(%rbp)
Ltmp21:
	movl	$1, %edx
	movq	%rax, %rdi
	leaq	-49(%rbp), %rsi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp22:
## %bb.31:                              ##   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rsp        ## 8-byte Reload
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rcx        ## 8-byte Reload
	leal	1(%rcx), %eax
	cmpl	_BUFFER_POWER_MAX(%rip), %ecx
	movl	%eax, %edi
	jl	LBB1_2
## %bb.9:
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_11
## %bb.10:
	movq	%rdi, -72(%rbp)
	callq	__ZdlPv
LBB1_11:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB1_36
## %bb.12:
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_36:
	callq	___stack_chk_fail
LBB1_7:
Ltmp6:
	leaq	-80(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv
Ltmp7:
	jmp	LBB1_8
LBB1_21:
Ltmp12:
	leaq	-80(%rbp), %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv
Ltmp13:
LBB1_8:
	ud2
LBB1_25:
Ltmp14:
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB1_34
	jmp	LBB1_35
LBB1_24:
Ltmp8:
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB1_34
	jmp	LBB1_35
LBB1_22:
Ltmp2:
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB1_34
	jmp	LBB1_35
LBB1_32:
Ltmp23:
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB1_34
	jmp	LBB1_35
LBB1_37:
Ltmp11:
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	jne	LBB1_34
	jmp	LBB1_35
LBB1_23:
Ltmp5:
	movq	%rax, %rbx
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	LBB1_35
LBB1_34:
	movq	%rdi, -72(%rbp)
	callq	__ZdlPv
LBB1_35:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0 ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0     ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0     ## >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0            ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0     ##     jumps to Ltmp2
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0     ## >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3            ##   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0     ##     jumps to Ltmp5
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0     ## >> Call Site 4 <<
	.uleb128 Ltmp9-Ltmp4            ##   Call between Ltmp4 and Ltmp9
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0     ## >> Call Site 5 <<
	.uleb128 Ltmp10-Ltmp9           ##   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0    ##     jumps to Ltmp11
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0    ## >> Call Site 6 <<
	.uleb128 Ltmp22-Ltmp15          ##   Call between Ltmp15 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0    ##     jumps to Ltmp23
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0    ## >> Call Site 7 <<
	.uleb128 Ltmp6-Ltmp22           ##   Call between Ltmp22 and Ltmp6
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0     ## >> Call Site 8 <<
	.uleb128 Ltmp7-Ltmp6            ##   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0     ##     jumps to Ltmp8
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0    ## >> Call Site 9 <<
	.uleb128 Ltmp13-Ltmp12          ##   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin0    ##     jumps to Ltmp14
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin0    ## >> Call Site 10 <<
	.uleb128 Lfunc_end0-Ltmp13      ##   Call between Ltmp13 and Lfunc_end0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _ZNSt3__124uniform_int_distributionIiEclINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEEiRT_RKNS1_10param_typeE
LCPI2_0:
	.quad	32                      ## 0x20
	.quad	16                      ## 0x10
LCPI2_1:
	.quad	2                       ## 0x2
	.quad	2                       ## 0x2
LCPI2_2:
	.long	2147418112              ## 0x7fff0000
	.long	2147352576              ## 0x7ffe0000
	.long	65535                   ## 0xffff
	.long	131071                  ## 0x1ffff
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__124uniform_int_distributionIiEclINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEEiRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIiEclINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEEiRT_RKNS1_10param_typeE
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIiEclINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEEiRT_RKNS1_10param_typeE: ## @_ZNSt3__124uniform_int_distributionIiEclINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEEEiRT_RKNS1_10param_typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	(%rdx), %eax
	movl	4(%rdx), %r15d
	subl	%eax, %r15d
	je	LBB2_13
## %bb.1:
	incl	%r15d
	je	LBB2_2
## %bb.3:
	movq	%rdx, %r14
	bsrl	%r15d, %eax
	xorl	$31, %eax
	movl	$32, %edi
	subq	%rax, %rdi
	movb	$33, %cl
	subb	%dil, %cl
	movl	%r15d, %eax
	shll	%cl, %eax
	shrl	%cl, %eax
	cmpl	$1, %eax
	sbbq	$0, %rdi
	movq	%rsi, -80(%rbp)
	movq	%rdi, -72(%rbp)
	movabsq	$-8608480567731124087, %rcx ## imm = 0x8888888888888889
	movq	%rdi, %rax
	mulq	%rcx
	shrq	$4, %rdx
	movq	%rdx, %rax
	shlq	$5, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	addq	%rdx, %rcx
	xorl	%ebx, %ebx
	addq	%rdi, %rcx
	setne	%bl
	addq	%rdx, %rbx
	movq	%rbx, -56(%rbp)
	xorl	%r8d, %r8d
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rax, %r9
	movq	%rax, -64(%rbp)
	movl	$2147483646, %eax       ## imm = 0x7FFFFFFE
	movl	%r9d, %ecx
	shrl	%cl, %eax
	movl	$2147483646, %esi       ## imm = 0x7FFFFFFE
	shll	%cl, %eax
	cmpq	$32, %r9
	cmovael	%r8d, %eax
	movl	%eax, -40(%rbp)
	subl	%eax, %esi
	xorl	%edx, %edx
	divq	%rbx
	cmpq	%rsi, %rax
	jae	LBB2_6
## %bb.4:
	incq	%rbx
	movq	%rbx, -56(%rbp)
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rbx
	movq	%rax, %r9
	movq	%rax, -64(%rbp)
	cmpq	$31, %rax
	ja	LBB2_8
## %bb.5:
	movl	$2147483646, %eax       ## imm = 0x7FFFFFFE
	movl	%r9d, %ecx
	shrl	%cl, %eax
	shll	%cl, %eax
	movl	%eax, -40(%rbp)
LBB2_6:
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%rbx
	subq	%rdx, %rbx
	movq	%rbx, -48(%rbp)
	cmpq	$30, %r9
	ja	LBB2_9
## %bb.7:
	movl	%r9d, %ecx
	incb	%cl
	movl	$2147483646, %eax       ## imm = 0x7FFFFFFE
	shrl	%cl, %eax
	shll	%cl, %eax
	movl	%eax, -36(%rbp)
	movb	$1, %al
	jmp	LBB2_10
LBB2_2:
	movq	%rsi, -80(%rbp)
	movaps	LCPI2_0(%rip), %xmm0    ## xmm0 = [32,16]
	movups	%xmm0, -72(%rbp)
	movaps	LCPI2_1(%rip), %xmm0    ## xmm0 = [2,2]
	movups	%xmm0, -56(%rbp)
	movaps	LCPI2_2(%rip), %xmm0    ## xmm0 = [2147418112,2147352576,65535,131071]
	movups	%xmm0, -40(%rbp)
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__125__independent_bits_engineINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEjE6__evalENS_17integral_constantIbLb1EEE
	jmp	LBB2_13
LBB2_8:
	movl	$0, -40(%rbp)
	subq	%rdx, %rbx
	movq	%rbx, -48(%rbp)
LBB2_9:
	movl	$0, -36(%rbp)
	xorl	%eax, %eax
LBB2_10:
	movl	%r9d, %ecx
	negb	%cl
	movl	$-1, %edx
	movl	$-1, %esi
	shrl	%cl, %esi
	xorl	%ecx, %ecx
	testq	%r9, %r9
	cmovnel	%esi, %ecx
	movl	%ecx, -32(%rbp)
	movb	$31, %cl
	subb	%r9b, %cl
	movl	$-1, %esi
	shrl	%cl, %esi
	testb	%al, %al
	cmovel	%edx, %esi
	movl	%esi, -28(%rbp)
	leaq	-80(%rbp), %rbx
	.p2align	4, 0x90
LBB2_11:                                ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	__ZNSt3__125__independent_bits_engineINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEjE6__evalENS_17integral_constantIbLb1EEE
	cmpl	%r15d, %eax
	jae	LBB2_11
## %bb.12:
	addl	(%r14), %eax
LBB2_13:
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__125__independent_bits_engineINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEjE6__evalENS_17integral_constantIbLb1EEE ## -- Begin function _ZNSt3__125__independent_bits_engineINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEjE6__evalENS_17integral_constantIbLb1EEE
	.weak_def_can_be_hidden	__ZNSt3__125__independent_bits_engineINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEjE6__evalENS_17integral_constantIbLb1EEE
	.p2align	4, 0x90
__ZNSt3__125__independent_bits_engineINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEjE6__evalENS_17integral_constantIbLb1EEE: ## @_ZNSt3__125__independent_bits_engineINS_26linear_congruential_engineIjLj48271ELj0ELj2147483647EEEjE6__evalENS_17integral_constantIbLb1EEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	32(%rdi), %r10
	testq	%r10, %r10
	je	LBB3_1
## %bb.2:
	movq	(%rdi), %r8
	movq	16(%rdi), %rcx
	movl	40(%rdi), %r12d
	movl	48(%rdi), %r9d
	movl	(%r8), %edx
	cmpq	$32, %rcx
	jae	LBB3_3
## %bb.7:
	xorl	%eax, %eax
	movl	$3163493265, %r11d      ## imm = 0xBC8F1391
	movl	$2147483647, %r15d      ## imm = 0x7FFFFFFF
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB3_8:                                 ## =>This Inner Loop Header: Depth=1
	movl	%edx, %ebx
	imulq	%r11, %rbx
	shrq	$47, %rbx
	imull	$44488, %ebx, %esi      ## imm = 0xADC8
	subl	%esi, %edx
	imull	$48271, %edx, %esi      ## imm = 0xBC8F
	imull	$3399, %ebx, %edx       ## imm = 0xD47
	subl	%edx, %esi
	movl	$0, %ebx
	cmovbl	%r15d, %ebx
	leal	(%rbx,%rsi), %edx
	leal	-1(%rbx,%rsi), %ebx
	cmpl	%r12d, %ebx
	jae	LBB3_8
## %bb.9:                               ##   in Loop: Header=BB3_8 Depth=1
	shll	%cl, %eax
	andl	%r9d, %ebx
	addl	%ebx, %eax
	incq	%r14
	cmpq	%r10, %r14
	jb	LBB3_8
	jmp	LBB3_10
LBB3_1:
	xorl	%eax, %eax
	movq	24(%rdi), %r9
	cmpq	%r9, %r10
	jb	LBB3_12
	jmp	LBB3_21
LBB3_3:
	xorl	%r11d, %r11d
	movl	$3163493265, %ecx       ## imm = 0xBC8F1391
	movl	$2147483647, %ebx       ## imm = 0x7FFFFFFF
	.p2align	4, 0x90
LBB3_4:                                 ## =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	imulq	%rcx, %rax
	shrq	$47, %rax
	imull	$44488, %eax, %esi      ## imm = 0xADC8
	subl	%esi, %edx
	imull	$48271, %edx, %esi      ## imm = 0xBC8F
	imull	$3399, %eax, %eax       ## imm = 0xD47
	subl	%eax, %esi
	movl	$0, %eax
	cmovbl	%ebx, %eax
	leal	(%rax,%rsi), %edx
	leal	-1(%rax,%rsi), %eax
	cmpl	%r12d, %eax
	jae	LBB3_4
## %bb.5:                               ##   in Loop: Header=BB3_4 Depth=1
	incq	%r11
	cmpq	%r10, %r11
	jb	LBB3_4
## %bb.6:
	andl	%eax, %r9d
	movl	%r9d, %eax
LBB3_10:
	movl	%edx, (%r8)
	movq	24(%rdi), %r9
	cmpq	%r9, %r10
	jae	LBB3_21
LBB3_12:
	movq	(%rdi), %r8
	movq	16(%rdi), %rcx
	movl	44(%rdi), %esi
	movl	52(%rdi), %r11d
	movl	(%r8), %edx
	cmpq	$31, %rcx
	jae	LBB3_13
## %bb.17:
	incl	%ecx
	movl	$3163493265, %r14d      ## imm = 0xBC8F1391
	movl	$2147483647, %r15d      ## imm = 0x7FFFFFFF
	.p2align	4, 0x90
LBB3_18:                                ## =>This Inner Loop Header: Depth=1
	movl	%edx, %edi
	imulq	%r14, %rdi
	shrq	$47, %rdi
	imull	$44488, %edi, %ebx      ## imm = 0xADC8
	subl	%ebx, %edx
	imull	$48271, %edx, %ebx      ## imm = 0xBC8F
	imull	$3399, %edi, %edx       ## imm = 0xD47
	subl	%edx, %ebx
	movl	$0, %edi
	cmovbl	%r15d, %edi
	leal	(%rdi,%rbx), %edx
	leal	-1(%rdi,%rbx), %edi
	cmpl	%esi, %edi
	jae	LBB3_18
## %bb.19:                              ##   in Loop: Header=BB3_18 Depth=1
	shll	%cl, %eax
	andl	%r11d, %edi
	addl	%edi, %eax
	incq	%r10
	cmpq	%r9, %r10
	jb	LBB3_18
	jmp	LBB3_20
LBB3_13:
	movl	$3163493265, %eax       ## imm = 0xBC8F1391
	movl	$2147483647, %ecx       ## imm = 0x7FFFFFFF
	.p2align	4, 0x90
LBB3_14:                                ## =>This Inner Loop Header: Depth=1
	movl	%edx, %edi
	imulq	%rax, %rdi
	shrq	$47, %rdi
	imull	$44488, %edi, %ebx      ## imm = 0xADC8
	subl	%ebx, %edx
	imull	$48271, %edx, %ebx      ## imm = 0xBC8F
	imull	$3399, %edi, %edx       ## imm = 0xD47
	subl	%edx, %ebx
	movl	$0, %edi
	cmovbl	%ecx, %edi
	leal	(%rdi,%rbx), %edx
	leal	-1(%rdi,%rbx), %edi
	cmpl	%esi, %edi
	jae	LBB3_14
## %bb.15:                              ##   in Loop: Header=BB3_14 Depth=1
	incq	%r10
	cmpq	%r9, %r10
	jb	LBB3_14
## %bb.16:
	andl	%edi, %r11d
	movl	%r11d, %eax
LBB3_20:
	movl	%edx, (%r8)
LBB3_21:
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp24:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp25:
## %bb.1:
	cmpb	$0, -80(%rbp)
	je	LBB5_10
## %bb.2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB5_7
## %bb.3:
Ltmp27:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp28:
## %bb.4:
Ltmp29:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp30:
## %bb.5:
	movq	(%rax), %rcx
Ltmp31:
	movq	%rax, %rdi
	movl	$32, %esi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp32:
## %bb.6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB5_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp34:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp35:
## %bb.8:
	testq	%rax, %rax
	jne	LBB5_10
## %bb.9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp37:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp38:
LBB5_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB5_11:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB5_12:
Ltmp39:
	jmp	LBB5_15
LBB5_13:
Ltmp33:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB5_16
LBB5_14:
Ltmp36:
LBB5_15:
	movq	%rax, %r14
LBB5_16:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB5_18
LBB5_17:
Ltmp26:
	movq	%rax, %r14
LBB5_18:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
Ltmp40:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp41:
## %bb.19:
	callq	___cxa_end_catch
	jmp	LBB5_11
LBB5_20:
Ltmp42:
	movq	%rax, %rbx
Ltmp43:
	callq	___cxa_end_catch
Ltmp44:
## %bb.21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB5_22:
Ltmp45:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp24-Lfunc_begin1    ## >> Call Site 1 <<
	.uleb128 Ltmp25-Ltmp24          ##   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin1    ##     jumps to Ltmp26
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp27-Lfunc_begin1    ## >> Call Site 2 <<
	.uleb128 Ltmp28-Ltmp27          ##   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp36-Lfunc_begin1    ##     jumps to Ltmp36
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp29-Lfunc_begin1    ## >> Call Site 3 <<
	.uleb128 Ltmp32-Ltmp29          ##   Call between Ltmp29 and Ltmp32
	.uleb128 Ltmp33-Lfunc_begin1    ##     jumps to Ltmp33
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp34-Lfunc_begin1    ## >> Call Site 4 <<
	.uleb128 Ltmp35-Ltmp34          ##   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin1    ##     jumps to Ltmp36
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp37-Lfunc_begin1    ## >> Call Site 5 <<
	.uleb128 Ltmp38-Ltmp37          ##   Call between Ltmp37 and Ltmp38
	.uleb128 Ltmp39-Lfunc_begin1    ##     jumps to Ltmp39
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp38-Lfunc_begin1    ## >> Call Site 6 <<
	.uleb128 Ltmp40-Ltmp38          ##   Call between Ltmp38 and Ltmp40
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin1    ## >> Call Site 7 <<
	.uleb128 Ltmp41-Ltmp40          ##   Call between Ltmp40 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin1    ##     jumps to Ltmp42
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin1    ## >> Call Site 8 <<
	.uleb128 Ltmp43-Ltmp41          ##   Call between Ltmp41 and Ltmp43
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin1    ## >> Call Site 9 <<
	.uleb128 Ltmp44-Ltmp43          ##   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin1    ##     jumps to Ltmp45
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp44-Lfunc_begin1    ## >> Call Site 10 <<
	.uleb128 Lfunc_end1-Ltmp44      ##   Call between Ltmp44 and Lfunc_end1
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end1:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testq	%rdi, %rdi
	je	LBB6_20
## %bb.1:
	movq	%r8, %r12
	movq	%rcx, %r15
	movq	%rdi, %r14
	movl	%r9d, -68(%rbp)         ## 4-byte Spill
	movq	%rcx, %rax
	subq	%rsi, %rax
	movq	24(%r8), %rcx
	xorl	%r13d, %r13d
	subq	%rax, %rcx
	cmovgq	%rcx, %r13
	movq	%rdx, -88(%rbp)         ## 8-byte Spill
	movq	%rdx, %rbx
	subq	%rsi, %rbx
	testq	%rbx, %rbx
	jle	LBB6_3
## %bb.2:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	*96(%rax)
	cmpq	%rbx, %rax
	jne	LBB6_20
LBB6_3:
	testq	%r13, %r13
	jle	LBB6_16
## %bb.4:
	movq	%r12, -80(%rbp)         ## 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$23, %r13
	jae	LBB6_8
## %bb.5:
	leal	(%r13,%r13), %eax
	movb	%al, -64(%rbp)
	leaq	-64(%rbp), %rbx
	leaq	-63(%rbp), %r12
	jmp	LBB6_9
LBB6_8:
	leaq	16(%r13), %rbx
	andq	$-16, %rbx
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %r12
	movq	%rax, -48(%rbp)
	orq	$1, %rbx
	movq	%rbx, -64(%rbp)
	movq	%r13, -56(%rbp)
	leaq	-64(%rbp), %rbx
LBB6_9:
	movzbl	-68(%rbp), %esi         ## 1-byte Folded Reload
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	_memset
	movb	$0, (%r12,%r13)
	testb	$1, -64(%rbp)
	je	LBB6_11
## %bb.10:
	movq	-48(%rbp), %rbx
	jmp	LBB6_12
LBB6_11:
	incq	%rbx
LBB6_12:
	movq	-80(%rbp), %r12         ## 8-byte Reload
	movq	(%r14), %rax
Ltmp46:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	*96(%rax)
Ltmp47:
## %bb.13:
	movq	%rax, %rbx
	testb	$1, -64(%rbp)
	je	LBB6_15
## %bb.14:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB6_15:
	cmpq	%r13, %rbx
	jne	LBB6_20
LBB6_16:
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	subq	%rsi, %r15
	testq	%r15, %r15
	jle	LBB6_18
## %bb.17:
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB6_20
LBB6_18:
	movq	$0, 24(%r12)
	jmp	LBB6_21
LBB6_20:
	xorl	%r14d, %r14d
LBB6_21:
	movq	%r14, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_22:
Ltmp48:
	movq	%rax, %rbx
	testb	$1, -64(%rbp)
	je	LBB6_24
## %bb.23:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB6_24:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2 ## >> Call Site 1 <<
	.uleb128 Ltmp46-Lfunc_begin2    ##   Call between Lfunc_begin2 and Ltmp46
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin2    ## >> Call Site 2 <<
	.uleb128 Ltmp47-Ltmp46          ##   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin2    ##     jumps to Ltmp48
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin2    ## >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp47      ##   Call between Ltmp47 and Lfunc_end2
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end2:
	.p2align	2
                                        ## -- End function
	.section	__DATA,__data
	.globl	_BUFFER_POWER_MIN       ## @BUFFER_POWER_MIN
	.p2align	2
_BUFFER_POWER_MIN:
	.long	10                      ## 0xa

	.globl	_BUFFER_POWER_MAX       ## @BUFFER_POWER_MAX
	.p2align	2
_BUFFER_POWER_MAX:
	.long	26                      ## 0x1a

	.globl	_testingSize            ## @testingSize
	.p2align	2
_testingSize:
	.long	1000                    ## 0x3e8

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Byte:"

L_.str.1:                               ## @.str.1
	.asciz	"      "

L_.str.2:                               ## @.str.2
	.asciz	"Time: \n"


.subsections_via_symbols
