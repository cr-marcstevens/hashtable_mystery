
./test_prime:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .text:

0000000000405e80 <hash_table_alt>:
  405e80:	f3 0f 1e fa          	endbr64 
  405e84:	41 57                	push   %r15
  405e86:	be ff 00 00 00       	mov    $0xff,%esi
  405e8b:	b8 06 00 00 00       	mov    $0x6,%eax
  405e90:	41 56                	push   %r14
  405e92:	41 55                	push   %r13
  405e94:	41 54                	push   %r12
  405e96:	55                   	push   %rbp
  405e97:	53                   	push   %rbx
  405e98:	48 83 ec 18          	sub    $0x18,%rsp
  405e9c:	48 8b 3d 3d 07 1d 00 	mov    0x1d073d(%rip),%rdi        # 5d65e0 <table_alt>
  405ea3:	c4 e2 f9 f7 15 8c e2 	shlx   %rax,0x1ce28c(%rip),%rdx        # 5d4138 <table_size>
  405eaa:	1c 00 
  405eac:	e8 ef b1 ff ff       	callq  4010a0 <.plt+0x80>
  405eb1:	48 c7 05 14 07 1d 00 	movq   $0x0,0x1d0714(%rip)        # 5d65d0 <table_count>
  405eb8:	00 00 00 00 
  405ebc:	e8 3f 94 00 00       	callq  40f300 <_ZNSt6chrono3_V212steady_clock3nowEv>
  405ec1:	48 8b 35 78 07 1d 00 	mov    0x1d0778(%rip),%rsi        # 5d6640 <random_numbers>
  405ec8:	4c 8b 0d 79 07 1d 00 	mov    0x1d0779(%rip),%r9        # 5d6648 <random_numbers+0x8>
  405ecf:	48 89 c3             	mov    %rax,%rbx
  405ed2:	49 39 f1             	cmp    %rsi,%r9
  405ed5:	0f 84 b1 00 00 00    	je     405f8c <hash_table_alt+0x10c>
  405edb:	4c 8b 2d 86 07 1d 00 	mov    0x1d0786(%rip),%r13        # 5d6668 <hash_prime+0x8>
  405ee2:	44 8b 25 87 07 1d 00 	mov    0x1d0787(%rip),%r12d        # 5d6670 <hash_prime+0x10>
  405ee9:	48 8b 2d 70 07 1d 00 	mov    0x1d0770(%rip),%rbp        # 5d6660 <hash_prime>
  405ef0:	4c 8b 1d e9 06 1d 00 	mov    0x1d06e9(%rip),%r11        # 5d65e0 <table_alt>
  405ef7:	45 31 d2             	xor    %r10d,%r10d
  405efa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405f00:	4c 8b 06             	mov    (%rsi),%r8
  405f03:	4c 8b 35 26 e2 1c 00 	mov    0x1ce226(%rip),%r14        # 5d4130 <empty_key>
  405f0a:	4c 89 c2             	mov    %r8,%rdx
  405f0d:	c4 c2 fb f6 d5       	mulx   %r13,%rax,%rdx
  405f12:	4c 89 c7             	mov    %r8,%rdi
  405f15:	4c 8b 3d 1c e2 1c 00 	mov    0x1ce21c(%rip),%r15        # 5d4138 <table_size>
  405f1c:	c4 e2 9b f7 c2       	shrx   %r12,%rdx,%rax
  405f21:	48 0f af c5          	imul   %rbp,%rax
  405f25:	48 29 c7             	sub    %rax,%rdi
  405f28:	48 89 f8             	mov    %rdi,%rax
  405f2b:	bf 00 04 00 00       	mov    $0x400,%edi
  405f30:	eb 15                	jmp    405f47 <hash_table_alt+0xc7>
  405f32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405f38:	48 ff c0             	inc    %rax
  405f3b:	4c 39 f8             	cmp    %r15,%rax
  405f3e:	49 0f 44 c2          	cmove  %r10,%rax
  405f42:	48 ff cf             	dec    %rdi
  405f45:	74 38                	je     405f7f <hash_table_alt+0xff>
  405f47:	48 89 c1             	mov    %rax,%rcx
  405f4a:	48 c1 e1 06          	shl    $0x6,%rcx
  405f4e:	4c 01 d9             	add    %r11,%rcx
  405f51:	4c 39 71 30          	cmp    %r14,0x30(%rcx)
  405f55:	75 e1                	jne    405f38 <hash_table_alt+0xb8>
  405f57:	31 d2                	xor    %edx,%edx
  405f59:	eb 0e                	jmp    405f69 <hash_table_alt+0xe9>
  405f5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405f60:	48 ff c2             	inc    %rdx
  405f63:	48 83 fa 07          	cmp    $0x7,%rdx
  405f67:	74 cf                	je     405f38 <hash_table_alt+0xb8>
  405f69:	4c 3b 34 d1          	cmp    (%rcx,%rdx,8),%r14
  405f6d:	75 f1                	jne    405f60 <hash_table_alt+0xe0>
  405f6f:	4c 89 04 d1          	mov    %r8,(%rcx,%rdx,8)
  405f73:	c6 44 11 38 01       	movb   $0x1,0x38(%rcx,%rdx,1)
  405f78:	48 ff 05 51 06 1d 00 	incq   0x1d0651(%rip)        # 5d65d0 <table_count>
  405f7f:	48 83 c6 08          	add    $0x8,%rsi
  405f83:	49 39 f1             	cmp    %rsi,%r9
  405f86:	0f 85 74 ff ff ff    	jne    405f00 <hash_table_alt+0x80>
  405f8c:	e8 6f 93 00 00       	callq  40f300 <_ZNSt6chrono3_V212steady_clock3nowEv>
  405f91:	48 29 d8             	sub    %rbx,%rax
  405f94:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
  405f9b:	de 1b 43 
  405f9e:	48 89 c1             	mov    %rax,%rcx
  405fa1:	48 f7 ea             	imul   %rdx
  405fa4:	48 c1 f9 3f          	sar    $0x3f,%rcx
  405fa8:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  405fac:	48 c1 fa 12          	sar    $0x12,%rdx
  405fb0:	48 29 ca             	sub    %rcx,%rdx
  405fb3:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
  405fb8:	48 8d 35 c0 f0 16 00 	lea    0x16f0c0(%rip),%rsi        # 57507f <_IO_stdin_used+0x7f>
  405fbf:	ba 13 00 00 00       	mov    $0x13,%edx
  405fc4:	48 8d 3d 15 16 1d 00 	lea    0x1d1615(%rip),%rdi        # 5d75e0 <_ZSt4cout>
  405fcb:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
  405fd1:	e8 ea a4 06 00       	callq  4704c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  405fd6:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
  405fdc:	48 8d 3d fd 15 1d 00 	lea    0x1d15fd(%rip),%rdi        # 5d75e0 <_ZSt4cout>
  405fe3:	e8 58 b5 06 00       	callq  471540 <_ZNSo9_M_insertIdEERSoT_>
  405fe8:	48 89 c5             	mov    %rax,%rbp
  405feb:	ba 02 00 00 00       	mov    $0x2,%edx
  405ff0:	48 8d 35 27 f0 16 00 	lea    0x16f027(%rip),%rsi        # 57501e <_IO_stdin_used+0x1e>
  405ff7:	48 89 c7             	mov    %rax,%rdi
  405ffa:	e8 c1 a4 06 00       	callq  4704c0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  405fff:	48 8b 45 00          	mov    0x0(%rbp),%rax
  406003:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  406007:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
  40600e:	00 
  40600f:	4d 85 e4             	test   %r12,%r12
  406012:	74 57                	je     40606b <hash_table_alt+0x1eb>
  406014:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  40601a:	74 24                	je     406040 <hash_table_alt+0x1c0>
  40601c:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  406022:	48 89 ef             	mov    %rbp,%rdi
  406025:	e8 16 a0 06 00       	callq  470040 <_ZNSo3putEc>
  40602a:	48 83 c4 18          	add    $0x18,%rsp
  40602e:	5b                   	pop    %rbx
  40602f:	5d                   	pop    %rbp
  406030:	41 5c                	pop    %r12
  406032:	41 5d                	pop    %r13
  406034:	41 5e                	pop    %r14
  406036:	48 89 c7             	mov    %rax,%rdi
  406039:	41 5f                	pop    %r15
  40603b:	e9 80 95 06 00       	jmpq   46f5c0 <_ZNSo5flushEv>
  406040:	4c 89 e7             	mov    %r12,%rdi
  406043:	e8 b8 81 01 00       	callq  41e200 <_ZNKSt5ctypeIcE13_M_widen_initEv>
  406048:	49 8b 04 24          	mov    (%r12),%rax
  40604c:	48 8d 15 2d 00 00 00 	lea    0x2d(%rip),%rdx        # 406080 <_ZNKSt5ctypeIcE8do_widenEc>
  406053:	48 8b 40 30          	mov    0x30(%rax),%rax
  406057:	be 0a 00 00 00       	mov    $0xa,%esi
  40605c:	48 39 d0             	cmp    %rdx,%rax
  40605f:	74 c1                	je     406022 <hash_table_alt+0x1a2>
  406061:	4c 89 e7             	mov    %r12,%rdi
  406064:	ff d0                	callq  *%rax
  406066:	0f be f0             	movsbl %al,%esi
  406069:	eb b7                	jmp    406022 <hash_table_alt+0x1a2>
  40606b:	e8 ba c7 ff ff       	callq  40282a <_ZSt16__throw_bad_castv>

Disassembly of section __libc_freeres_fn:

Disassembly of section .fini:
