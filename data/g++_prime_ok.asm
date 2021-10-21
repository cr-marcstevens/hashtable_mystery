
./test:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .plt.sec:

Disassembly of section .text:

0000000000002b80 <hash_table_ok>:
    2b80:	f3 0f 1e fa          	endbr64 
    2b84:	41 56                	push   %r14
    2b86:	b8 06 00 00 00       	mov    $0x6,%eax
    2b8b:	31 f6                	xor    %esi,%esi
    2b8d:	41 55                	push   %r13
    2b8f:	41 54                	push   %r12
    2b91:	55                   	push   %rbp
    2b92:	53                   	push   %rbx
    2b93:	48 83 ec 10          	sub    $0x10,%rsp
    2b97:	48 8b 3d 12 36 00 00 	mov    0x3612(%rip),%rdi        # 61b0 <table_ok>
    2b9e:	c4 e2 f9 f7 15 71 34 	shlx   %rax,0x3471(%rip),%rdx        # 6018 <table_size>
    2ba5:	00 00 
    2ba7:	e8 94 f6 ff ff       	callq  2240 <memset@plt>
    2bac:	48 c7 05 a9 35 00 00 	movq   $0x0,0x35a9(%rip)        # 6160 <table_count>
    2bb3:	00 00 00 00 
    2bb7:	e8 64 f7 ff ff       	callq  2320 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    2bbc:	48 8b 0d 0d 36 00 00 	mov    0x360d(%rip),%rcx        # 61d0 <random_numbers>
    2bc3:	48 8b 3d 0e 36 00 00 	mov    0x360e(%rip),%rdi        # 61d8 <random_numbers+0x8>
    2bca:	48 89 c3             	mov    %rax,%rbx
    2bcd:	48 39 cf             	cmp    %rcx,%rdi
    2bd0:	0f 84 9a 00 00 00    	je     2c70 <hash_table_ok+0xf0>
    2bd6:	48 8b 2d 1b 36 00 00 	mov    0x361b(%rip),%rbp        # 61f8 <hash_prime+0x8>
    2bdd:	44 8b 1d 1c 36 00 00 	mov    0x361c(%rip),%r11d        # 6200 <hash_prime+0x10>
    2be4:	4c 8b 15 05 36 00 00 	mov    0x3605(%rip),%r10        # 61f0 <hash_prime>
    2beb:	4c 8b 0d be 35 00 00 	mov    0x35be(%rip),%r9        # 61b0 <table_ok>
    2bf2:	45 31 c0             	xor    %r8d,%r8d
    2bf5:	0f 1f 00             	nopl   (%rax)
    2bf8:	48 8b 31             	mov    (%rcx),%rsi
    2bfb:	4c 8b 35 16 34 00 00 	mov    0x3416(%rip),%r14        # 6018 <table_size>
    2c02:	48 89 f2             	mov    %rsi,%rdx
    2c05:	c4 e2 fb f6 d5       	mulx   %rbp,%rax,%rdx
    2c0a:	41 bd 00 04 00 00    	mov    $0x400,%r13d
    2c10:	c4 e2 a3 f7 c2       	shrx   %r11,%rdx,%rax
    2c15:	49 0f af c2          	imul   %r10,%rax
    2c19:	48 89 f2             	mov    %rsi,%rdx
    2c1c:	48 29 c2             	sub    %rax,%rdx
    2c1f:	48 89 d0             	mov    %rdx,%rax
    2c22:	eb 13                	jmp    2c37 <hash_table_ok+0xb7>
    2c24:	0f 1f 40 00          	nopl   0x0(%rax)
    2c28:	48 ff c0             	inc    %rax
    2c2b:	4c 39 f0             	cmp    %r14,%rax
    2c2e:	49 0f 44 c0          	cmove  %r8,%rax
    2c32:	49 ff cd             	dec    %r13
    2c35:	74 30                	je     2c67 <hash_table_ok+0xe7>
    2c37:	48 89 c2             	mov    %rax,%rdx
    2c3a:	48 c1 e2 06          	shl    $0x6,%rdx
    2c3e:	4c 01 ca             	add    %r9,%rdx
    2c41:	44 0f b6 62 3f       	movzbl 0x3f(%rdx),%r12d
    2c46:	41 80 fc 07          	cmp    $0x7,%r12b
    2c4a:	74 dc                	je     2c28 <hash_table_ok+0xa8>
    2c4c:	41 0f b6 c4          	movzbl %r12b,%eax
    2c50:	48 89 34 c2          	mov    %rsi,(%rdx,%rax,8)
    2c54:	41 ff c4             	inc    %r12d
    2c57:	c6 44 02 38 01       	movb   $0x1,0x38(%rdx,%rax,1)
    2c5c:	48 ff 05 fd 34 00 00 	incq   0x34fd(%rip)        # 6160 <table_count>
    2c63:	44 88 62 3f          	mov    %r12b,0x3f(%rdx)
    2c67:	48 83 c1 08          	add    $0x8,%rcx
    2c6b:	48 39 cf             	cmp    %rcx,%rdi
    2c6e:	75 88                	jne    2bf8 <hash_table_ok+0x78>
    2c70:	e8 ab f6 ff ff       	callq  2320 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    2c75:	48 29 d8             	sub    %rbx,%rax
    2c78:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
    2c7f:	de 1b 43 
    2c82:	48 89 c1             	mov    %rax,%rcx
    2c85:	48 f7 ea             	imul   %rdx
    2c88:	48 c1 f9 3f          	sar    $0x3f,%rcx
    2c8c:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2c90:	48 c1 fa 12          	sar    $0x12,%rdx
    2c94:	48 29 ca             	sub    %rcx,%rdx
    2c97:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2c9c:	48 8d 35 61 13 00 00 	lea    0x1361(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    2ca3:	ba 13 00 00 00       	mov    $0x13,%edx
    2ca8:	48 8d 3d 91 33 00 00 	lea    0x3391(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    2caf:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    2cb5:	e8 26 f6 ff ff       	callq  22e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2cba:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
    2cc0:	48 8d 3d 79 33 00 00 	lea    0x3379(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    2cc7:	e8 a4 f6 ff ff       	callq  2370 <_ZNSo9_M_insertIdEERSoT_@plt>
    2ccc:	48 89 c5             	mov    %rax,%rbp
    2ccf:	ba 02 00 00 00       	mov    $0x2,%edx
    2cd4:	48 8d 35 3d 13 00 00 	lea    0x133d(%rip),%rsi        # 4018 <_IO_stdin_used+0x18>
    2cdb:	48 89 c7             	mov    %rax,%rdi
    2cde:	e8 fd f5 ff ff       	callq  22e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2ce3:	48 8b 45 00          	mov    0x0(%rbp),%rax
    2ce7:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    2ceb:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
    2cf2:	00 
    2cf3:	4d 85 e4             	test   %r12,%r12
    2cf6:	74 5b                	je     2d53 <hash_table_ok+0x1d3>
    2cf8:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
    2cfe:	74 28                	je     2d28 <hash_table_ok+0x1a8>
    2d00:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
    2d06:	48 89 ef             	mov    %rbp,%rdi
    2d09:	e8 f2 f4 ff ff       	callq  2200 <_ZNSo3putEc@plt>
    2d0e:	48 83 c4 10          	add    $0x10,%rsp
    2d12:	5b                   	pop    %rbx
    2d13:	5d                   	pop    %rbp
    2d14:	41 5c                	pop    %r12
    2d16:	41 5d                	pop    %r13
    2d18:	48 89 c7             	mov    %rax,%rdi
    2d1b:	41 5e                	pop    %r14
    2d1d:	e9 3e f5 ff ff       	jmpq   2260 <_ZNSo5flushEv@plt>
    2d22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2d28:	4c 89 e7             	mov    %r12,%rdi
    2d2b:	e8 c0 f5 ff ff       	callq  22f0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2d30:	49 8b 04 24          	mov    (%r12),%rax
    2d34:	48 8d 15 45 04 00 00 	lea    0x445(%rip),%rdx        # 3180 <_ZNKSt5ctypeIcE8do_widenEc>
    2d3b:	48 8b 40 30          	mov    0x30(%rax),%rax
    2d3f:	be 0a 00 00 00       	mov    $0xa,%esi
    2d44:	48 39 d0             	cmp    %rdx,%rax
    2d47:	74 bd                	je     2d06 <hash_table_ok+0x186>
    2d49:	4c 89 e7             	mov    %r12,%rdi
    2d4c:	ff d0                	callq  *%rax
    2d4e:	0f be f0             	movsbl %al,%esi
    2d51:	eb b3                	jmp    2d06 <hash_table_ok+0x186>
    2d53:	e8 b8 f5 ff ff       	callq  2310 <_ZSt16__throw_bad_castv@plt>

Disassembly of section .fini:
