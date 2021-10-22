
./test_prime:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .text:

0000000000405c80 <hash_table_bad>:
  405c80:	f3 0f 1e fa          	endbr64 
  405c84:	41 57                	push   %r15
  405c86:	b8 06 00 00 00       	mov    $0x6,%eax
  405c8b:	31 f6                	xor    %esi,%esi
  405c8d:	41 56                	push   %r14
  405c8f:	41 55                	push   %r13
  405c91:	41 54                	push   %r12
  405c93:	55                   	push   %rbp
  405c94:	53                   	push   %rbx
  405c95:	48 83 ec 18          	sub    $0x18,%rsp
  405c99:	48 8b 3d 60 09 1d 00 	mov    0x1d0960(%rip),%rdi        # 5d6600 <table_bad>
  405ca0:	c4 e2 f9 f7 15 8f e4 	shlx   %rax,0x1ce48f(%rip),%rdx        # 5d4138 <table_size>
  405ca7:	1c 00 
  405ca9:	e8 f2 b3 ff ff       	callq  4010a0 <.plt+0x80>
  405cae:	48 c7 05 17 09 1d 00 	movq   $0x0,0x1d0917(%rip)        # 5d65d0 <table_count>
  405cb5:	00 00 00 00 
  405cb9:	e8 42 96 00 00       	callq  40f300 <_ZNSt6chrono3_V212steady_clock3nowEv>
  405cbe:	48 8b 3d 7b 09 1d 00 	mov    0x1d097b(%rip),%rdi        # 5d6640 <random_numbers>
  405cc5:	4c 8b 15 7c 09 1d 00 	mov    0x1d097c(%rip),%r10        # 5d6648 <random_numbers+0x8>
  405ccc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  405cd1:	49 39 fa             	cmp    %rdi,%r10
  405cd4:	0f 84 b7 00 00 00    	je     405d91 <hash_table_bad+0x111>
  405cda:	4c 8b 2d 87 09 1d 00 	mov    0x1d0987(%rip),%r13        # 5d6668 <hash_prime+0x8>
  405ce1:	44 8b 25 88 09 1d 00 	mov    0x1d0988(%rip),%r12d        # 5d6670 <hash_prime+0x10>
  405ce8:	48 8b 2d 71 09 1d 00 	mov    0x1d0971(%rip),%rbp        # 5d6660 <hash_prime>
  405cef:	48 8b 1d 0a 09 1d 00 	mov    0x1d090a(%rip),%rbx        # 5d6600 <table_bad>
  405cf6:	45 31 db             	xor    %r11d,%r11d
  405cf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405d00:	4c 8b 07             	mov    (%rdi),%r8
  405d03:	4c 8b 3d 2e e4 1c 00 	mov    0x1ce42e(%rip),%r15        # 5d4138 <table_size>
  405d0a:	4c 89 c2             	mov    %r8,%rdx
  405d0d:	c4 c2 fb f6 d5       	mulx   %r13,%rax,%rdx
  405d12:	4c 89 c6             	mov    %r8,%rsi
  405d15:	41 b9 00 04 00 00    	mov    $0x400,%r9d
  405d1b:	c4 e2 9b f7 c2       	shrx   %r12,%rdx,%rax
  405d20:	48 0f af c5          	imul   %rbp,%rax
  405d24:	48 29 c6             	sub    %rax,%rsi
  405d27:	48 89 f0             	mov    %rsi,%rax
  405d2a:	eb 13                	jmp    405d3f <hash_table_bad+0xbf>
  405d2c:	0f 1f 40 00          	nopl   0x0(%rax)
  405d30:	48 ff c0             	inc    %rax
  405d33:	4c 39 f8             	cmp    %r15,%rax
  405d36:	49 0f 44 c3          	cmove  %r11,%rax
  405d3a:	49 ff c9             	dec    %r9
  405d3d:	74 45                	je     405d84 <hash_table_bad+0x104>
  405d3f:	48 89 c1             	mov    %rax,%rcx
  405d42:	48 c1 e1 06          	shl    $0x6,%rcx
  405d46:	48 01 d9             	add    %rbx,%rcx
  405d49:	0f b6 71 3f          	movzbl 0x3f(%rcx),%esi
  405d4d:	40 80 fe 07          	cmp    $0x7,%sil
  405d51:	74 dd                	je     405d30 <hash_table_bad+0xb0>
  405d53:	44 0f b6 f6          	movzbl %sil,%r14d
  405d57:	31 d2                	xor    %edx,%edx
  405d59:	eb 0e                	jmp    405d69 <hash_table_bad+0xe9>
  405d5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405d60:	48 ff c2             	inc    %rdx
  405d63:	48 83 fa 07          	cmp    $0x7,%rdx
  405d67:	74 c7                	je     405d30 <hash_table_bad+0xb0>
  405d69:	4c 39 f2             	cmp    %r14,%rdx
  405d6c:	75 f2                	jne    405d60 <hash_table_bad+0xe0>
  405d6e:	4c 89 04 d1          	mov    %r8,(%rcx,%rdx,8)
  405d72:	ff c6                	inc    %esi
  405d74:	c6 44 11 38 01       	movb   $0x1,0x38(%rcx,%rdx,1)
  405d79:	48 ff 05 50 08 1d 00 	incq   0x1d0850(%rip)        # 5d65d0 <table_count>
  405d80:	40 88 71 3f          	mov    %sil,0x3f(%rcx)
  405d84:	48 83 c7 08          	add    $0x8,%rdi
  405d88:	49 39 fa             	cmp    %rdi,%r10
  405d8b:	0f 85 6f ff ff ff    	jne    405d00 <hash_table_bad+0x80>
  405d91:	e8 6a 95 00 00       	callq  40f300 <_ZNSt6chrono3_V212steady_clock3nowEv>
  405d96:	48 2b 44 24 08       	sub    0x8(%rsp),%rax
  405d9b:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
  405da2:	de 1b 43 
  405da5:	48 89 c1             	mov    %rax,%rcx
  405da8:	48 f7 ea             	imul   %rdx
  405dab:	48 c1 f9 3f          	sar    $0x3f,%rcx
  405daf:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  405db3:	48 c1 fa 12          	sar    $0x12,%rdx
  405db7:	48 29 ca             	sub    %rcx,%rdx
  405dba:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
  405dbf:	48 8d 35 a5 f2 16 00 	lea    0x16f2a5(%rip),%rsi        # 57506b <_IO_stdin_used+0x6b>
  405dc6:	ba 13 00 00 00       	mov    $0x13,%edx
  405dcb:	48 8d 3d 0e 18 1d 00 	lea    0x1d180e(%rip),%rdi        # 5d75e0 <_ZSt4cout>
  405dd2:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
  405dd8:	e8 e3 a6 06 00       	callq  4704c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  405ddd:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
  405de3:	48 8d 3d f6 17 1d 00 	lea    0x1d17f6(%rip),%rdi        # 5d75e0 <_ZSt4cout>
  405dea:	e8 51 b7 06 00       	callq  471540 <_ZNSo9_M_insertIdEERSoT_>
  405def:	48 89 c5             	mov    %rax,%rbp
  405df2:	ba 02 00 00 00       	mov    $0x2,%edx
  405df7:	48 8d 35 20 f2 16 00 	lea    0x16f220(%rip),%rsi        # 57501e <_IO_stdin_used+0x1e>
  405dfe:	48 89 c7             	mov    %rax,%rdi
  405e01:	e8 ba a6 06 00       	callq  4704c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  405e06:	48 8b 45 00          	mov    0x0(%rbp),%rax
  405e0a:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  405e0e:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
  405e15:	00 
  405e16:	4d 85 e4             	test   %r12,%r12
  405e19:	74 60                	je     405e7b <hash_table_bad+0x1fb>
  405e1b:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  405e21:	74 2d                	je     405e50 <hash_table_bad+0x1d0>
  405e23:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  405e29:	48 89 ef             	mov    %rbp,%rdi
  405e2c:	e8 0f a2 06 00       	callq  470040 <_ZNSo3putEc>
  405e31:	48 83 c4 18          	add    $0x18,%rsp
  405e35:	5b                   	pop    %rbx
  405e36:	5d                   	pop    %rbp
  405e37:	41 5c                	pop    %r12
  405e39:	41 5d                	pop    %r13
  405e3b:	41 5e                	pop    %r14
  405e3d:	48 89 c7             	mov    %rax,%rdi
  405e40:	41 5f                	pop    %r15
  405e42:	e9 79 97 06 00       	jmpq   46f5c0 <_ZNSo5flushEv>
  405e47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  405e4e:	00 00 
  405e50:	4c 89 e7             	mov    %r12,%rdi
  405e53:	e8 a8 83 01 00       	callq  41e200 <_ZNKSt5ctypeIcE13_M_widen_initEv>
  405e58:	49 8b 04 24          	mov    (%r12),%rax
  405e5c:	48 8d 15 1d 02 00 00 	lea    0x21d(%rip),%rdx        # 406080 <_ZNKSt5ctypeIcE8do_widenEc>
  405e63:	48 8b 40 30          	mov    0x30(%rax),%rax
  405e67:	be 0a 00 00 00       	mov    $0xa,%esi
  405e6c:	48 39 d0             	cmp    %rdx,%rax
  405e6f:	74 b8                	je     405e29 <hash_table_bad+0x1a9>
  405e71:	4c 89 e7             	mov    %r12,%rdi
  405e74:	ff d0                	callq  *%rax
  405e76:	0f be f0             	movsbl %al,%esi
  405e79:	eb ae                	jmp    405e29 <hash_table_bad+0x1a9>
  405e7b:	e8 aa c9 ff ff       	callq  40282a <_ZSt16__throw_bad_castv>

Disassembly of section __libc_freeres_fn:

Disassembly of section .fini:
