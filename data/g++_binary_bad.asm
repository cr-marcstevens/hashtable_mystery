
./test:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .plt.sec:

Disassembly of section .text:

0000000000002cc0 <hash_table_bad>:
    2cc0:	f3 0f 1e fa          	endbr64 
    2cc4:	41 54                	push   %r12
    2cc6:	ba 00 00 00 40       	mov    $0x40000000,%edx
    2ccb:	31 f6                	xor    %esi,%esi
    2ccd:	55                   	push   %rbp
    2cce:	31 ed                	xor    %ebp,%ebp
    2cd0:	53                   	push   %rbx
    2cd1:	48 83 ec 10          	sub    $0x10,%rsp
    2cd5:	48 8b 3d b4 34 00 00 	mov    0x34b4(%rip),%rdi        # 6190 <table_bad>
    2cdc:	e8 4f f5 ff ff       	callq  2230 <memset@plt>
    2ce1:	48 c7 05 74 34 00 00 	movq   $0x0,0x3474(%rip)        # 6160 <table_count>
    2ce8:	00 00 00 00 
    2cec:	e8 1f f6 ff ff       	callq  2310 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    2cf1:	4c 8b 1d e0 34 00 00 	mov    0x34e0(%rip),%r11        # 61d8 <random_numbers+0x8>
    2cf8:	4c 8b 05 d1 34 00 00 	mov    0x34d1(%rip),%r8        # 61d0 <random_numbers>
    2cff:	4c 8b 25 8a 34 00 00 	mov    0x348a(%rip),%r12        # 6190 <table_bad>
    2d06:	48 89 c3             	mov    %rax,%rbx
    2d09:	4d 39 c3             	cmp    %r8,%r11
    2d0c:	74 7f                	je     2d8d <hash_table_bad+0xcd>
    2d0e:	66 90                	xchg   %ax,%ax
    2d10:	4d 8b 08             	mov    (%r8),%r9
    2d13:	bf 00 04 00 00       	mov    $0x400,%edi
    2d18:	4c 89 c8             	mov    %r9,%rax
    2d1b:	25 ff ff ff 00       	and    $0xffffff,%eax
    2d20:	eb 18                	jmp    2d3a <hash_table_bad+0x7a>
    2d22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2d28:	48 ff c0             	inc    %rax
    2d2b:	48 3d 00 00 00 01    	cmp    $0x1000000,%rax
    2d31:	48 0f 44 c5          	cmove  %rbp,%rax
    2d35:	48 ff cf             	dec    %rdi
    2d38:	74 4a                	je     2d84 <hash_table_bad+0xc4>
    2d3a:	48 89 c1             	mov    %rax,%rcx
    2d3d:	48 c1 e1 06          	shl    $0x6,%rcx
    2d41:	4c 01 e1             	add    %r12,%rcx
    2d44:	0f b6 71 3f          	movzbl 0x3f(%rcx),%esi
    2d48:	40 80 fe 07          	cmp    $0x7,%sil
    2d4c:	74 da                	je     2d28 <hash_table_bad+0x68>
    2d4e:	44 0f b6 d6          	movzbl %sil,%r10d
    2d52:	31 d2                	xor    %edx,%edx
    2d54:	eb 13                	jmp    2d69 <hash_table_bad+0xa9>
    2d56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2d5d:	00 00 00 
    2d60:	48 ff c2             	inc    %rdx
    2d63:	48 83 fa 07          	cmp    $0x7,%rdx
    2d67:	74 bf                	je     2d28 <hash_table_bad+0x68>
    2d69:	4c 39 d2             	cmp    %r10,%rdx
    2d6c:	75 f2                	jne    2d60 <hash_table_bad+0xa0>
    2d6e:	4c 89 0c d1          	mov    %r9,(%rcx,%rdx,8)
    2d72:	ff c6                	inc    %esi
    2d74:	c6 44 11 38 01       	movb   $0x1,0x38(%rcx,%rdx,1)
    2d79:	48 ff 05 e0 33 00 00 	incq   0x33e0(%rip)        # 6160 <table_count>
    2d80:	40 88 71 3f          	mov    %sil,0x3f(%rcx)
    2d84:	49 83 c0 08          	add    $0x8,%r8
    2d88:	4d 39 c3             	cmp    %r8,%r11
    2d8b:	75 83                	jne    2d10 <hash_table_bad+0x50>
    2d8d:	e8 7e f5 ff ff       	callq  2310 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    2d92:	48 29 d8             	sub    %rbx,%rax
    2d95:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
    2d9c:	de 1b 43 
    2d9f:	48 89 c1             	mov    %rax,%rcx
    2da2:	48 f7 ea             	imul   %rdx
    2da5:	48 c1 f9 3f          	sar    $0x3f,%rcx
    2da9:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2dad:	48 c1 fa 12          	sar    $0x12,%rdx
    2db1:	48 29 ca             	sub    %rcx,%rdx
    2db4:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2db9:	48 8d 35 5b 12 00 00 	lea    0x125b(%rip),%rsi        # 401b <_IO_stdin_used+0x1b>
    2dc0:	ba 13 00 00 00       	mov    $0x13,%edx
    2dc5:	48 8d 3d 74 32 00 00 	lea    0x3274(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    2dcc:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    2dd2:	e8 f9 f4 ff ff       	callq  22d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2dd7:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
    2ddd:	48 8d 3d 5c 32 00 00 	lea    0x325c(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    2de4:	e8 67 f5 ff ff       	callq  2350 <_ZNSo9_M_insertIdEERSoT_@plt>
    2de9:	48 89 c5             	mov    %rax,%rbp
    2dec:	ba 02 00 00 00       	mov    $0x2,%edx
    2df1:	48 8d 35 20 12 00 00 	lea    0x1220(%rip),%rsi        # 4018 <_IO_stdin_used+0x18>
    2df8:	48 89 c7             	mov    %rax,%rdi
    2dfb:	e8 d0 f4 ff ff       	callq  22d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2e00:	48 8b 45 00          	mov    0x0(%rbp),%rax
    2e04:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    2e08:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
    2e0f:	00 
    2e10:	4d 85 e4             	test   %r12,%r12
    2e13:	74 56                	je     2e6b <hash_table_bad+0x1ab>
    2e15:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
    2e1b:	74 23                	je     2e40 <hash_table_bad+0x180>
    2e1d:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
    2e23:	48 89 ef             	mov    %rbp,%rdi
    2e26:	e8 c5 f3 ff ff       	callq  21f0 <_ZNSo3putEc@plt>
    2e2b:	48 83 c4 10          	add    $0x10,%rsp
    2e2f:	5b                   	pop    %rbx
    2e30:	5d                   	pop    %rbp
    2e31:	48 89 c7             	mov    %rax,%rdi
    2e34:	41 5c                	pop    %r12
    2e36:	e9 15 f4 ff ff       	jmpq   2250 <_ZNSo5flushEv@plt>
    2e3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2e40:	4c 89 e7             	mov    %r12,%rdi
    2e43:	e8 98 f4 ff ff       	callq  22e0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    2e48:	49 8b 04 24          	mov    (%r12),%rax
    2e4c:	48 8d 15 ed 01 00 00 	lea    0x1ed(%rip),%rdx        # 3040 <_ZNKSt5ctypeIcE8do_widenEc>
    2e53:	48 8b 40 30          	mov    0x30(%rax),%rax
    2e57:	be 0a 00 00 00       	mov    $0xa,%esi
    2e5c:	48 39 d0             	cmp    %rdx,%rax
    2e5f:	74 c2                	je     2e23 <hash_table_bad+0x163>
    2e61:	4c 89 e7             	mov    %r12,%rdi
    2e64:	ff d0                	callq  *%rax
    2e66:	0f be f0             	movsbl %al,%esi
    2e69:	eb b8                	jmp    2e23 <hash_table_bad+0x163>
    2e6b:	e8 90 f4 ff ff       	callq  2300 <_ZSt16__throw_bad_castv@plt>

Disassembly of section .fini:
