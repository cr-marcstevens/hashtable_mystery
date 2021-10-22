
./test_binary:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .text:

0000000000405ac0 <hash_table_bad>:
  405ac0:	f3 0f 1e fa          	endbr64 
  405ac4:	41 54                	push   %r12
  405ac6:	ba 00 00 00 40       	mov    $0x40000000,%edx
  405acb:	31 f6                	xor    %esi,%esi
  405acd:	55                   	push   %rbp
  405ace:	31 ed                	xor    %ebp,%ebp
  405ad0:	53                   	push   %rbx
  405ad1:	48 83 ec 10          	sub    $0x10,%rsp
  405ad5:	48 8b 3d 04 0b 1d 00 	mov    0x1d0b04(%rip),%rdi        # 5d65e0 <table_bad>
  405adc:	e8 bf b5 ff ff       	callq  4010a0 <.plt+0x80>
  405ae1:	48 c7 05 c4 0a 1d 00 	movq   $0x0,0x1d0ac4(%rip)        # 5d65b0 <table_count>
  405ae8:	00 00 00 00 
  405aec:	e8 cf 95 00 00       	callq  40f0c0 <_ZNSt6chrono3_V212steady_clock3nowEv>
  405af1:	4c 8b 1d 30 0b 1d 00 	mov    0x1d0b30(%rip),%r11        # 5d6628 <random_numbers+0x8>
  405af8:	4c 8b 05 21 0b 1d 00 	mov    0x1d0b21(%rip),%r8        # 5d6620 <random_numbers>
  405aff:	4c 8b 25 da 0a 1d 00 	mov    0x1d0ada(%rip),%r12        # 5d65e0 <table_bad>
  405b06:	48 89 c3             	mov    %rax,%rbx
  405b09:	4d 39 c3             	cmp    %r8,%r11
  405b0c:	74 7f                	je     405b8d <hash_table_bad+0xcd>
  405b0e:	66 90                	xchg   %ax,%ax
  405b10:	4d 8b 08             	mov    (%r8),%r9
  405b13:	bf 00 04 00 00       	mov    $0x400,%edi
  405b18:	4c 89 c8             	mov    %r9,%rax
  405b1b:	25 ff ff ff 00       	and    $0xffffff,%eax
  405b20:	eb 18                	jmp    405b3a <hash_table_bad+0x7a>
  405b22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405b28:	48 ff c0             	inc    %rax
  405b2b:	48 3d 00 00 00 01    	cmp    $0x1000000,%rax
  405b31:	48 0f 44 c5          	cmove  %rbp,%rax
  405b35:	48 ff cf             	dec    %rdi
  405b38:	74 4a                	je     405b84 <hash_table_bad+0xc4>
  405b3a:	48 89 c1             	mov    %rax,%rcx
  405b3d:	48 c1 e1 06          	shl    $0x6,%rcx
  405b41:	4c 01 e1             	add    %r12,%rcx
  405b44:	0f b6 71 3f          	movzbl 0x3f(%rcx),%esi
  405b48:	40 80 fe 07          	cmp    $0x7,%sil
  405b4c:	74 da                	je     405b28 <hash_table_bad+0x68>
  405b4e:	44 0f b6 d6          	movzbl %sil,%r10d
  405b52:	31 d2                	xor    %edx,%edx
  405b54:	eb 13                	jmp    405b69 <hash_table_bad+0xa9>
  405b56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405b5d:	00 00 00 
  405b60:	48 ff c2             	inc    %rdx
  405b63:	48 83 fa 07          	cmp    $0x7,%rdx
  405b67:	74 bf                	je     405b28 <hash_table_bad+0x68>
  405b69:	4c 39 d2             	cmp    %r10,%rdx
  405b6c:	75 f2                	jne    405b60 <hash_table_bad+0xa0>
  405b6e:	4c 89 0c d1          	mov    %r9,(%rcx,%rdx,8)
  405b72:	ff c6                	inc    %esi
  405b74:	c6 44 11 38 01       	movb   $0x1,0x38(%rcx,%rdx,1)
  405b79:	48 ff 05 30 0a 1d 00 	incq   0x1d0a30(%rip)        # 5d65b0 <table_count>
  405b80:	40 88 71 3f          	mov    %sil,0x3f(%rcx)
  405b84:	49 83 c0 08          	add    $0x8,%r8
  405b88:	4d 39 c3             	cmp    %r8,%r11
  405b8b:	75 83                	jne    405b10 <hash_table_bad+0x50>
  405b8d:	e8 2e 95 00 00       	callq  40f0c0 <_ZNSt6chrono3_V212steady_clock3nowEv>
  405b92:	48 29 d8             	sub    %rbx,%rax
  405b95:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
  405b9c:	de 1b 43 
  405b9f:	48 89 c1             	mov    %rax,%rcx
  405ba2:	48 f7 ea             	imul   %rdx
  405ba5:	48 c1 f9 3f          	sar    $0x3f,%rcx
  405ba9:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  405bad:	48 c1 fa 12          	sar    $0x12,%rdx
  405bb1:	48 29 ca             	sub    %rcx,%rdx
  405bb4:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
  405bb9:	48 8d 35 ab f4 16 00 	lea    0x16f4ab(%rip),%rsi        # 57506b <_IO_stdin_used+0x6b>
  405bc0:	ba 13 00 00 00       	mov    $0x13,%edx
  405bc5:	48 8d 3d d4 19 1d 00 	lea    0x1d19d4(%rip),%rdi        # 5d75a0 <_ZSt4cout>
  405bcc:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
  405bd2:	e8 a9 a6 06 00       	callq  470280 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  405bd7:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
  405bdd:	48 8d 3d bc 19 1d 00 	lea    0x1d19bc(%rip),%rdi        # 5d75a0 <_ZSt4cout>
  405be4:	e8 17 b7 06 00       	callq  471300 <_ZNSo9_M_insertIdEERSoT_>
  405be9:	48 89 c5             	mov    %rax,%rbp
  405bec:	ba 02 00 00 00       	mov    $0x2,%edx
  405bf1:	48 8d 35 26 f4 16 00 	lea    0x16f426(%rip),%rsi        # 57501e <_IO_stdin_used+0x1e>
  405bf8:	48 89 c7             	mov    %rax,%rdi
  405bfb:	e8 80 a6 06 00       	callq  470280 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  405c00:	48 8b 45 00          	mov    0x0(%rbp),%rax
  405c04:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  405c08:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
  405c0f:	00 
  405c10:	4d 85 e4             	test   %r12,%r12
  405c13:	74 56                	je     405c6b <hash_table_bad+0x1ab>
  405c15:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  405c1b:	74 23                	je     405c40 <hash_table_bad+0x180>
  405c1d:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  405c23:	48 89 ef             	mov    %rbp,%rdi
  405c26:	e8 d5 a1 06 00       	callq  46fe00 <_ZNSo3putEc>
  405c2b:	48 83 c4 10          	add    $0x10,%rsp
  405c2f:	5b                   	pop    %rbx
  405c30:	5d                   	pop    %rbp
  405c31:	48 89 c7             	mov    %rax,%rdi
  405c34:	41 5c                	pop    %r12
  405c36:	e9 45 97 06 00       	jmpq   46f380 <_ZNSo5flushEv>
  405c3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405c40:	4c 89 e7             	mov    %r12,%rdi
  405c43:	e8 78 83 01 00       	callq  41dfc0 <_ZNKSt5ctypeIcE13_M_widen_initEv>
  405c48:	49 8b 04 24          	mov    (%r12),%rax
  405c4c:	48 8d 15 ed 01 00 00 	lea    0x1ed(%rip),%rdx        # 405e40 <_ZNKSt5ctypeIcE8do_widenEc>
  405c53:	48 8b 40 30          	mov    0x30(%rax),%rax
  405c57:	be 0a 00 00 00       	mov    $0xa,%esi
  405c5c:	48 39 d0             	cmp    %rdx,%rax
  405c5f:	74 c2                	je     405c23 <hash_table_bad+0x163>
  405c61:	4c 89 e7             	mov    %r12,%rdi
  405c64:	ff d0                	callq  *%rax
  405c66:	0f be f0             	movsbl %al,%esi
  405c69:	eb b8                	jmp    405c23 <hash_table_bad+0x163>
  405c6b:	e8 ae cb ff ff       	callq  40281e <_ZSt16__throw_bad_castv>

Disassembly of section __libc_freeres_fn:

Disassembly of section .fini:
