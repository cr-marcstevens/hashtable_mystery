
./test_prime:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .text:

0000000000405a80 <hash_table_ok>:
  405a80:	f3 0f 1e fa          	endbr64 
  405a84:	41 56                	push   %r14
  405a86:	b8 06 00 00 00       	mov    $0x6,%eax
  405a8b:	31 f6                	xor    %esi,%esi
  405a8d:	41 55                	push   %r13
  405a8f:	41 54                	push   %r12
  405a91:	55                   	push   %rbp
  405a92:	53                   	push   %rbx
  405a93:	48 83 ec 10          	sub    $0x10,%rsp
  405a97:	48 8b 3d 82 0b 1d 00 	mov    0x1d0b82(%rip),%rdi        # 5d6620 <table_ok>
  405a9e:	c4 e2 f9 f7 15 91 e6 	shlx   %rax,0x1ce691(%rip),%rdx        # 5d4138 <table_size>
  405aa5:	1c 00 
  405aa7:	e8 f4 b5 ff ff       	callq  4010a0 <.plt+0x80>
  405aac:	48 c7 05 19 0b 1d 00 	movq   $0x0,0x1d0b19(%rip)        # 5d65d0 <table_count>
  405ab3:	00 00 00 00 
  405ab7:	e8 44 98 00 00       	callq  40f300 <_ZNSt6chrono3_V212steady_clock3nowEv>
  405abc:	48 8b 0d 7d 0b 1d 00 	mov    0x1d0b7d(%rip),%rcx        # 5d6640 <random_numbers>
  405ac3:	48 8b 3d 7e 0b 1d 00 	mov    0x1d0b7e(%rip),%rdi        # 5d6648 <random_numbers+0x8>
  405aca:	48 89 c3             	mov    %rax,%rbx
  405acd:	48 39 cf             	cmp    %rcx,%rdi
  405ad0:	0f 84 9a 00 00 00    	je     405b70 <hash_table_ok+0xf0>
  405ad6:	48 8b 2d 8b 0b 1d 00 	mov    0x1d0b8b(%rip),%rbp        # 5d6668 <hash_prime+0x8>
  405add:	44 8b 1d 8c 0b 1d 00 	mov    0x1d0b8c(%rip),%r11d        # 5d6670 <hash_prime+0x10>
  405ae4:	4c 8b 15 75 0b 1d 00 	mov    0x1d0b75(%rip),%r10        # 5d6660 <hash_prime>
  405aeb:	4c 8b 0d 2e 0b 1d 00 	mov    0x1d0b2e(%rip),%r9        # 5d6620 <table_ok>
  405af2:	45 31 c0             	xor    %r8d,%r8d
  405af5:	0f 1f 00             	nopl   (%rax)
  405af8:	48 8b 31             	mov    (%rcx),%rsi
  405afb:	4c 8b 35 36 e6 1c 00 	mov    0x1ce636(%rip),%r14        # 5d4138 <table_size>
  405b02:	48 89 f2             	mov    %rsi,%rdx
  405b05:	c4 e2 fb f6 d5       	mulx   %rbp,%rax,%rdx
  405b0a:	41 bd 00 04 00 00    	mov    $0x400,%r13d
  405b10:	c4 e2 a3 f7 c2       	shrx   %r11,%rdx,%rax
  405b15:	49 0f af c2          	imul   %r10,%rax
  405b19:	48 89 f2             	mov    %rsi,%rdx
  405b1c:	48 29 c2             	sub    %rax,%rdx
  405b1f:	48 89 d0             	mov    %rdx,%rax
  405b22:	eb 13                	jmp    405b37 <hash_table_ok+0xb7>
  405b24:	0f 1f 40 00          	nopl   0x0(%rax)
  405b28:	48 ff c0             	inc    %rax
  405b2b:	4c 39 f0             	cmp    %r14,%rax
  405b2e:	49 0f 44 c0          	cmove  %r8,%rax
  405b32:	49 ff cd             	dec    %r13
  405b35:	74 30                	je     405b67 <hash_table_ok+0xe7>
  405b37:	48 89 c2             	mov    %rax,%rdx
  405b3a:	48 c1 e2 06          	shl    $0x6,%rdx
  405b3e:	4c 01 ca             	add    %r9,%rdx
  405b41:	44 0f b6 62 3f       	movzbl 0x3f(%rdx),%r12d
  405b46:	41 80 fc 07          	cmp    $0x7,%r12b
  405b4a:	74 dc                	je     405b28 <hash_table_ok+0xa8>
  405b4c:	41 0f b6 c4          	movzbl %r12b,%eax
  405b50:	48 89 34 c2          	mov    %rsi,(%rdx,%rax,8)
  405b54:	41 ff c4             	inc    %r12d
  405b57:	c6 44 02 38 01       	movb   $0x1,0x38(%rdx,%rax,1)
  405b5c:	48 ff 05 6d 0a 1d 00 	incq   0x1d0a6d(%rip)        # 5d65d0 <table_count>
  405b63:	44 88 62 3f          	mov    %r12b,0x3f(%rdx)
  405b67:	48 83 c1 08          	add    $0x8,%rcx
  405b6b:	48 39 cf             	cmp    %rcx,%rdi
  405b6e:	75 88                	jne    405af8 <hash_table_ok+0x78>
  405b70:	e8 8b 97 00 00       	callq  40f300 <_ZNSt6chrono3_V212steady_clock3nowEv>
  405b75:	48 29 d8             	sub    %rbx,%rax
  405b78:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
  405b7f:	de 1b 43 
  405b82:	48 89 c1             	mov    %rax,%rcx
  405b85:	48 f7 ea             	imul   %rdx
  405b88:	48 c1 f9 3f          	sar    $0x3f,%rcx
  405b8c:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  405b90:	48 c1 fa 12          	sar    $0x12,%rdx
  405b94:	48 29 ca             	sub    %rcx,%rdx
  405b97:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
  405b9c:	48 8d 35 b4 f4 16 00 	lea    0x16f4b4(%rip),%rsi        # 575057 <_IO_stdin_used+0x57>
  405ba3:	ba 13 00 00 00       	mov    $0x13,%edx
  405ba8:	48 8d 3d 31 1a 1d 00 	lea    0x1d1a31(%rip),%rdi        # 5d75e0 <_ZSt4cout>
  405baf:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
  405bb5:	e8 06 a9 06 00       	callq  4704c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  405bba:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
  405bc0:	48 8d 3d 19 1a 1d 00 	lea    0x1d1a19(%rip),%rdi        # 5d75e0 <_ZSt4cout>
  405bc7:	e8 74 b9 06 00       	callq  471540 <_ZNSo9_M_insertIdEERSoT_>
  405bcc:	48 89 c5             	mov    %rax,%rbp
  405bcf:	ba 02 00 00 00       	mov    $0x2,%edx
  405bd4:	48 8d 35 43 f4 16 00 	lea    0x16f443(%rip),%rsi        # 57501e <_IO_stdin_used+0x1e>
  405bdb:	48 89 c7             	mov    %rax,%rdi
  405bde:	e8 dd a8 06 00       	callq  4704c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  405be3:	48 8b 45 00          	mov    0x0(%rbp),%rax
  405be7:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  405beb:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
  405bf2:	00 
  405bf3:	4d 85 e4             	test   %r12,%r12
  405bf6:	74 5b                	je     405c53 <hash_table_ok+0x1d3>
  405bf8:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  405bfe:	74 28                	je     405c28 <hash_table_ok+0x1a8>
  405c00:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  405c06:	48 89 ef             	mov    %rbp,%rdi
  405c09:	e8 32 a4 06 00       	callq  470040 <_ZNSo3putEc>
  405c0e:	48 83 c4 10          	add    $0x10,%rsp
  405c12:	5b                   	pop    %rbx
  405c13:	5d                   	pop    %rbp
  405c14:	41 5c                	pop    %r12
  405c16:	41 5d                	pop    %r13
  405c18:	48 89 c7             	mov    %rax,%rdi
  405c1b:	41 5e                	pop    %r14
  405c1d:	e9 9e 99 06 00       	jmpq   46f5c0 <_ZNSo5flushEv>
  405c22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405c28:	4c 89 e7             	mov    %r12,%rdi
  405c2b:	e8 d0 85 01 00       	callq  41e200 <_ZNKSt5ctypeIcE13_M_widen_initEv>
  405c30:	49 8b 04 24          	mov    (%r12),%rax
  405c34:	48 8d 15 45 04 00 00 	lea    0x445(%rip),%rdx        # 406080 <_ZNKSt5ctypeIcE8do_widenEc>
  405c3b:	48 8b 40 30          	mov    0x30(%rax),%rax
  405c3f:	be 0a 00 00 00       	mov    $0xa,%esi
  405c44:	48 39 d0             	cmp    %rdx,%rax
  405c47:	74 bd                	je     405c06 <hash_table_ok+0x186>
  405c49:	4c 89 e7             	mov    %r12,%rdi
  405c4c:	ff d0                	callq  *%rax
  405c4e:	0f be f0             	movsbl %al,%esi
  405c51:	eb b3                	jmp    405c06 <hash_table_ok+0x186>
  405c53:	e8 d2 cb ff ff       	callq  40282a <_ZSt16__throw_bad_castv>

Disassembly of section __libc_freeres_fn:

Disassembly of section .fini:
