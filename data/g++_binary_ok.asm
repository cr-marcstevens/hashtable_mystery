
./test:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .plt.sec:

Disassembly of section .text:

0000000000002b00 <hash_table_ok>:
    2b00:	f3 0f 1e fa          	endbr64 
    2b04:	41 54                	push   %r12
    2b06:	ba 00 00 00 40       	mov    $0x40000000,%edx
    2b0b:	31 f6                	xor    %esi,%esi
    2b0d:	55                   	push   %rbp
    2b0e:	53                   	push   %rbx
    2b0f:	48 83 ec 10          	sub    $0x10,%rsp
    2b13:	48 8b 3d 96 36 00 00 	mov    0x3696(%rip),%rdi        # 61b0 <table_ok>
    2b1a:	e8 11 f7 ff ff       	callq  2230 <memset@plt>
    2b1f:	48 c7 05 36 36 00 00 	movq   $0x0,0x3636(%rip)        # 6160 <table_count>
    2b26:	00 00 00 00 
    2b2a:	e8 e1 f7 ff ff       	callq  2310 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    2b2f:	4c 8b 0d a2 36 00 00 	mov    0x36a2(%rip),%r9        # 61d8 <random_numbers+0x8>
    2b36:	48 8b 3d 93 36 00 00 	mov    0x3693(%rip),%rdi        # 61d0 <random_numbers>
    2b3d:	4c 8b 1d 6c 36 00 00 	mov    0x366c(%rip),%r11        # 61b0 <table_ok>
    2b44:	48 89 c3             	mov    %rax,%rbx
    2b47:	45 31 d2             	xor    %r10d,%r10d
    2b4a:	49 39 f9             	cmp    %rdi,%r9
    2b4d:	74 5f                	je     2bae <hash_table_ok+0xae>
    2b4f:	90                   	nop
    2b50:	4c 8b 07             	mov    (%rdi),%r8
    2b53:	be 00 04 00 00       	mov    $0x400,%esi
    2b58:	4c 89 c0             	mov    %r8,%rax
    2b5b:	25 ff ff ff 00       	and    $0xffffff,%eax
    2b60:	eb 18                	jmp    2b7a <hash_table_ok+0x7a>
    2b62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2b68:	48 ff c0             	inc    %rax
    2b6b:	48 3d 00 00 00 01    	cmp    $0x1000000,%rax
    2b71:	49 0f 44 c2          	cmove  %r10,%rax
    2b75:	48 ff ce             	dec    %rsi
    2b78:	74 2b                	je     2ba5 <hash_table_ok+0xa5>
    2b7a:	48 89 c2             	mov    %rax,%rdx
    2b7d:	48 c1 e2 06          	shl    $0x6,%rdx
    2b81:	4c 01 da             	add    %r11,%rdx
    2b84:	0f b6 4a 3f          	movzbl 0x3f(%rdx),%ecx
    2b88:	80 f9 07             	cmp    $0x7,%cl
    2b8b:	74 db                	je     2b68 <hash_table_ok+0x68>
    2b8d:	0f b6 c1             	movzbl %cl,%eax
    2b90:	4c 89 04 c2          	mov    %r8,(%rdx,%rax,8)
    2b94:	ff c1                	inc    %ecx
    2b96:	c6 44 02 38 01       	movb   $0x1,0x38(%rdx,%rax,1)
    2b9b:	48 ff 05 be 35 00 00 	incq   0x35be(%rip)        # 6160 <table_count>
    2ba2:	88 4a 3f             	mov    %cl,0x3f(%rdx)
    2ba5:	48 83 c7 08          	add    $0x8,%rdi
    2ba9:	49 39 f9             	cmp    %rdi,%r9
    2bac:	75 a2                	jne    2b50 <hash_table_ok+0x50>
    2bae:	e8 5d f7 ff ff       	callq  2310 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    2bb3:	48 29 d8             	sub    %rbx,%rax
    2bb6:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
    2bbd:	de 1b 43 
    2bc0:	48 89 c1             	mov    %rax,%rcx
    2bc3:	48 f7 ea             	imul   %rdx
    2bc6:	48 c1 f9 3f          	sar    $0x3f,%rcx
    2bca:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2bce:	48 c1 fa 12          	sar    $0x12,%rdx
    2bd2:	48 29 ca             	sub    %rcx,%rdx
    2bd5:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2bda:	48 8d 35 23 14 00 00 	lea    0x1423(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    2be1:	ba 13 00 00 00       	mov    $0x13,%edx
    2be6:	48 8d 3d 53 34 00 00 	lea    0x3453(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    2bed:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    2bf3:	e8 d8 f6 ff ff       	callq  22d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2bf8:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
    2bfe:	48 8d 3d 3b 34 00 00 	lea    0x343b(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    2c05:	e8 46 f7 ff ff       	callq  2350 <_ZNSo9_M_insertIdEERSoT_@plt>
    2c0a:	48 89 c5             	mov    %rax,%rbp
    2c0d:	ba 02 00 00 00       	mov    $0x2,%edx
    2c12:	48 8d 35 ff 13 00 00 	lea    0x13ff(%rip),%rsi        # 4018 <_IO_stdin_used+0x18>
    2c19:	48 89 c7             	mov    %rax,%rdi
    2c1c:	e8 af f6 ff ff       	callq  22d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2c21:	48 8b 45 00          	mov    0x0(%rbp),%rax
    2c25:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    2c29:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
    2c30:	00 
    2c31:	4d 85 e4             	test   %r12,%r12
    2c34:	74 55                	je     2c8b <hash_table_ok+0x18b>
    2c36:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
    2c3c:	74 22                	je     2c60 <hash_table_ok+0x160>
    2c3e:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
    2c44:	48 89 ef             	mov    %rbp,%rdi
    2c47:	e8 a4 f5 ff ff       	callq  21f0 <_ZNSo3putEc@plt>
    2c4c:	48 83 c4 10          	add    $0x10,%rsp
    2c50:	5b                   	pop    %rbx
    2c51:	5d                   	pop    %rbp
    2c52:	48 89 c7             	mov    %rax,%rdi
    2c55:	41 5c                	pop    %r12
    2c57:	e9 f4 f5 ff ff       	jmpq   2250 <_ZNSo5flushEv@plt>
    2c5c:	0f 1f 40 00          	nopl   0x0(%rax)
    2c60:	4c 89 e7             	mov    %r12,%rdi
    2c63:	e8 78 f6 ff ff       	callq  22e0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2c68:	49 8b 04 24          	mov    (%r12),%rax
    2c6c:	48 8d 15 cd 03 00 00 	lea    0x3cd(%rip),%rdx        # 3040 <_ZNKSt5ctypeIcE8do_widenEc>
    2c73:	48 8b 40 30          	mov    0x30(%rax),%rax
    2c77:	be 0a 00 00 00       	mov    $0xa,%esi
    2c7c:	48 39 d0             	cmp    %rdx,%rax
    2c7f:	74 c3                	je     2c44 <hash_table_ok+0x144>
    2c81:	4c 89 e7             	mov    %r12,%rdi
    2c84:	ff d0                	callq  *%rax
    2c86:	0f be f0             	movsbl %al,%esi
    2c89:	eb b9                	jmp    2c44 <hash_table_ok+0x144>
    2c8b:	e8 70 f6 ff ff       	callq  2300 <_ZSt16__throw_bad_castv@plt>

Disassembly of section .fini:
