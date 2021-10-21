
./test:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .plt.sec:

Disassembly of section .text:

0000000000002d80 <hash_table_bad>:
    2d80:	f3 0f 1e fa          	endbr64 
    2d84:	41 57                	push   %r15
    2d86:	b8 06 00 00 00       	mov    $0x6,%eax
    2d8b:	31 f6                	xor    %esi,%esi
    2d8d:	41 56                	push   %r14
    2d8f:	41 55                	push   %r13
    2d91:	41 54                	push   %r12
    2d93:	55                   	push   %rbp
    2d94:	53                   	push   %rbx
    2d95:	48 83 ec 18          	sub    $0x18,%rsp
    2d99:	48 8b 3d f0 33 00 00 	mov    0x33f0(%rip),%rdi        # 6190 <table_bad>
    2da0:	c4 e2 f9 f7 15 6f 32 	shlx   %rax,0x326f(%rip),%rdx        # 6018 <table_size>
    2da7:	00 00 
    2da9:	e8 92 f4 ff ff       	callq  2240 <memset@plt>
    2dae:	48 c7 05 a7 33 00 00 	movq   $0x0,0x33a7(%rip)        # 6160 <table_count>
    2db5:	00 00 00 00 
    2db9:	e8 62 f5 ff ff       	callq  2320 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    2dbe:	48 8b 3d 0b 34 00 00 	mov    0x340b(%rip),%rdi        # 61d0 <random_numbers>
    2dc5:	4c 8b 15 0c 34 00 00 	mov    0x340c(%rip),%r10        # 61d8 <random_numbers+0x8>
    2dcc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2dd1:	49 39 fa             	cmp    %rdi,%r10
    2dd4:	0f 84 b7 00 00 00    	je     2e91 <hash_table_bad+0x111>
    2dda:	4c 8b 2d 17 34 00 00 	mov    0x3417(%rip),%r13        # 61f8 <hash_prime+0x8>
    2de1:	44 8b 25 18 34 00 00 	mov    0x3418(%rip),%r12d        # 6200 <hash_prime+0x10>
    2de8:	48 8b 2d 01 34 00 00 	mov    0x3401(%rip),%rbp        # 61f0 <hash_prime>
    2def:	48 8b 1d 9a 33 00 00 	mov    0x339a(%rip),%rbx        # 6190 <table_bad>
    2df6:	45 31 db             	xor    %r11d,%r11d
    2df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2e00:	4c 8b 07             	mov    (%rdi),%r8
    2e03:	4c 8b 3d 0e 32 00 00 	mov    0x320e(%rip),%r15        # 6018 <table_size>
    2e0a:	4c 89 c2             	mov    %r8,%rdx
    2e0d:	c4 c2 fb f6 d5       	mulx   %r13,%rax,%rdx
    2e12:	4c 89 c6             	mov    %r8,%rsi
    2e15:	41 b9 00 04 00 00    	mov    $0x400,%r9d
    2e1b:	c4 e2 9b f7 c2       	shrx   %r12,%rdx,%rax
    2e20:	48 0f af c5          	imul   %rbp,%rax
    2e24:	48 29 c6             	sub    %rax,%rsi
    2e27:	48 89 f0             	mov    %rsi,%rax
    2e2a:	eb 13                	jmp    2e3f <hash_table_bad+0xbf>
    2e2c:	0f 1f 40 00          	nopl   0x0(%rax)
    2e30:	48 ff c0             	inc    %rax
    2e33:	4c 39 f8             	cmp    %r15,%rax
    2e36:	49 0f 44 c3          	cmove  %r11,%rax
    2e3a:	49 ff c9             	dec    %r9
    2e3d:	74 45                	je     2e84 <hash_table_bad+0x104>
    2e3f:	48 89 c1             	mov    %rax,%rcx
    2e42:	48 c1 e1 06          	shl    $0x6,%rcx
    2e46:	48 01 d9             	add    %rbx,%rcx
    2e49:	0f b6 71 3f          	movzbl 0x3f(%rcx),%esi
    2e4d:	40 80 fe 07          	cmp    $0x7,%sil
    2e51:	74 dd                	je     2e30 <hash_table_bad+0xb0>
    2e53:	44 0f b6 f6          	movzbl %sil,%r14d
    2e57:	31 d2                	xor    %edx,%edx
    2e59:	eb 0e                	jmp    2e69 <hash_table_bad+0xe9>
    2e5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2e60:	48 ff c2             	inc    %rdx
    2e63:	48 83 fa 07          	cmp    $0x7,%rdx
    2e67:	74 c7                	je     2e30 <hash_table_bad+0xb0>
    2e69:	4c 39 f2             	cmp    %r14,%rdx
    2e6c:	75 f2                	jne    2e60 <hash_table_bad+0xe0>
    2e6e:	4c 89 04 d1          	mov    %r8,(%rcx,%rdx,8)
    2e72:	ff c6                	inc    %esi
    2e74:	c6 44 11 38 01       	movb   $0x1,0x38(%rcx,%rdx,1)
    2e79:	48 ff 05 e0 32 00 00 	incq   0x32e0(%rip)        # 6160 <table_count>
    2e80:	40 88 71 3f          	mov    %sil,0x3f(%rcx)
    2e84:	48 83 c7 08          	add    $0x8,%rdi
    2e88:	49 39 fa             	cmp    %rdi,%r10
    2e8b:	0f 85 6f ff ff ff    	jne    2e00 <hash_table_bad+0x80>
    2e91:	e8 8a f4 ff ff       	callq  2320 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    2e96:	48 2b 44 24 08       	sub    0x8(%rsp),%rax
    2e9b:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
    2ea2:	de 1b 43 
    2ea5:	48 89 c1             	mov    %rax,%rcx
    2ea8:	48 f7 ea             	imul   %rdx
    2eab:	48 c1 f9 3f          	sar    $0x3f,%rcx
    2eaf:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2eb3:	48 c1 fa 12          	sar    $0x12,%rdx
    2eb7:	48 29 ca             	sub    %rcx,%rdx
    2eba:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2ebf:	48 8d 35 55 11 00 00 	lea    0x1155(%rip),%rsi        # 401b <_IO_stdin_used+0x1b>
    2ec6:	ba 13 00 00 00       	mov    $0x13,%edx
    2ecb:	48 8d 3d 6e 31 00 00 	lea    0x316e(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    2ed2:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    2ed8:	e8 03 f4 ff ff       	callq  22e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2edd:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
    2ee3:	48 8d 3d 56 31 00 00 	lea    0x3156(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    2eea:	e8 81 f4 ff ff       	callq  2370 <_ZNSo9_M_insertIdEERSoT_@plt>
    2eef:	48 89 c5             	mov    %rax,%rbp
    2ef2:	ba 02 00 00 00       	mov    $0x2,%edx
    2ef7:	48 8d 35 1a 11 00 00 	lea    0x111a(%rip),%rsi        # 4018 <_IO_stdin_used+0x18>
    2efe:	48 89 c7             	mov    %rax,%rdi
    2f01:	e8 da f3 ff ff       	callq  22e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2f06:	48 8b 45 00          	mov    0x0(%rbp),%rax
    2f0a:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    2f0e:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
    2f15:	00 
    2f16:	4d 85 e4             	test   %r12,%r12
    2f19:	74 60                	je     2f7b <hash_table_bad+0x1fb>
    2f1b:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
    2f21:	74 2d                	je     2f50 <hash_table_bad+0x1d0>
    2f23:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
    2f29:	48 89 ef             	mov    %rbp,%rdi
    2f2c:	e8 cf f2 ff ff       	callq  2200 <_ZNSo3putEc@plt>
    2f31:	48 83 c4 18          	add    $0x18,%rsp
    2f35:	5b                   	pop    %rbx
    2f36:	5d                   	pop    %rbp
    2f37:	41 5c                	pop    %r12
    2f39:	41 5d                	pop    %r13
    2f3b:	41 5e                	pop    %r14
    2f3d:	48 89 c7             	mov    %rax,%rdi
    2f40:	41 5f                	pop    %r15
    2f42:	e9 19 f3 ff ff       	jmpq   2260 <_ZNSo5flushEv@plt>
    2f47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2f4e:	00 00 
    2f50:	4c 89 e7             	mov    %r12,%rdi
    2f53:	e8 98 f3 ff ff       	callq  22f0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2f58:	49 8b 04 24          	mov    (%r12),%rax
    2f5c:	48 8d 15 1d 02 00 00 	lea    0x21d(%rip),%rdx        # 3180 <_ZNKSt5ctypeIcE8do_widenEc>
    2f63:	48 8b 40 30          	mov    0x30(%rax),%rax
    2f67:	be 0a 00 00 00       	mov    $0xa,%esi
    2f6c:	48 39 d0             	cmp    %rdx,%rax
    2f6f:	74 b8                	je     2f29 <hash_table_bad+0x1a9>
    2f71:	4c 89 e7             	mov    %r12,%rdi
    2f74:	ff d0                	callq  *%rax
    2f76:	0f be f0             	movsbl %al,%esi
    2f79:	eb ae                	jmp    2f29 <hash_table_bad+0x1a9>
    2f7b:	e8 90 f3 ff ff       	callq  2310 <_ZSt16__throw_bad_castv@plt>

Disassembly of section .fini:
