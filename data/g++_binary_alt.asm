
./test:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .plt.sec:

Disassembly of section .text:

0000000000002e80 <hash_table_alt>:
    2e80:	f3 0f 1e fa          	endbr64 
    2e84:	41 54                	push   %r12
    2e86:	ba 00 00 00 40       	mov    $0x40000000,%edx
    2e8b:	be ff 00 00 00       	mov    $0xff,%esi
    2e90:	55                   	push   %rbp
    2e91:	53                   	push   %rbx
    2e92:	48 83 ec 10          	sub    $0x10,%rsp
    2e96:	48 8b 3d d3 32 00 00 	mov    0x32d3(%rip),%rdi        # 6170 <table_alt>
    2e9d:	e8 8e f3 ff ff       	callq  2230 <memset@plt>
    2ea2:	48 c7 05 b3 32 00 00 	movq   $0x0,0x32b3(%rip)        # 6160 <table_count>
    2ea9:	00 00 00 00 
    2ead:	e8 5e f4 ff ff       	callq  2310 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    2eb2:	4c 8b 15 1f 33 00 00 	mov    0x331f(%rip),%r10        # 61d8 <random_numbers+0x8>
    2eb9:	48 8b 3d 10 33 00 00 	mov    0x3310(%rip),%rdi        # 61d0 <random_numbers>
    2ec0:	48 8b 2d a9 32 00 00 	mov    0x32a9(%rip),%rbp        # 6170 <table_alt>
    2ec7:	48 89 c3             	mov    %rax,%rbx
    2eca:	45 31 db             	xor    %r11d,%r11d
    2ecd:	49 39 fa             	cmp    %rdi,%r10
    2ed0:	74 76                	je     2f48 <hash_table_alt+0xc8>
    2ed2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2ed8:	4c 8b 0f             	mov    (%rdi),%r9
    2edb:	4c 8b 05 2e 31 00 00 	mov    0x312e(%rip),%r8        # 6010 <empty_key>
    2ee2:	4c 89 c8             	mov    %r9,%rax
    2ee5:	25 ff ff ff 00       	and    $0xffffff,%eax
    2eea:	be 00 04 00 00       	mov    $0x400,%esi
    2eef:	eb 19                	jmp    2f0a <hash_table_alt+0x8a>
    2ef1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2ef8:	48 ff c0             	inc    %rax
    2efb:	48 3d 00 00 00 01    	cmp    $0x1000000,%rax
    2f01:	49 0f 44 c3          	cmove  %r11,%rax
    2f05:	48 ff ce             	dec    %rsi
    2f08:	74 35                	je     2f3f <hash_table_alt+0xbf>
    2f0a:	48 89 c1             	mov    %rax,%rcx
    2f0d:	48 c1 e1 06          	shl    $0x6,%rcx
    2f11:	48 01 e9             	add    %rbp,%rcx
    2f14:	4c 39 41 30          	cmp    %r8,0x30(%rcx)
    2f18:	75 de                	jne    2ef8 <hash_table_alt+0x78>
    2f1a:	31 d2                	xor    %edx,%edx
    2f1c:	eb 0b                	jmp    2f29 <hash_table_alt+0xa9>
    2f1e:	66 90                	xchg   %ax,%ax
    2f20:	48 ff c2             	inc    %rdx
    2f23:	48 83 fa 07          	cmp    $0x7,%rdx
    2f27:	74 cf                	je     2ef8 <hash_table_alt+0x78>
    2f29:	4c 3b 04 d1          	cmp    (%rcx,%rdx,8),%r8
    2f2d:	75 f1                	jne    2f20 <hash_table_alt+0xa0>
    2f2f:	4c 89 0c d1          	mov    %r9,(%rcx,%rdx,8)
    2f33:	c6 44 11 38 01       	movb   $0x1,0x38(%rcx,%rdx,1)
    2f38:	48 ff 05 21 32 00 00 	incq   0x3221(%rip)        # 6160 <table_count>
    2f3f:	48 83 c7 08          	add    $0x8,%rdi
    2f43:	49 39 fa             	cmp    %rdi,%r10
    2f46:	75 90                	jne    2ed8 <hash_table_alt+0x58>
    2f48:	e8 c3 f3 ff ff       	callq  2310 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    2f4d:	48 29 d8             	sub    %rbx,%rax
    2f50:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
    2f57:	de 1b 43 
    2f5a:	48 89 c1             	mov    %rax,%rcx
    2f5d:	48 f7 ea             	imul   %rdx
    2f60:	48 c1 f9 3f          	sar    $0x3f,%rcx
    2f64:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    2f68:	48 c1 fa 12          	sar    $0x12,%rdx
    2f6c:	48 29 ca             	sub    %rcx,%rdx
    2f6f:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    2f74:	48 8d 35 b4 10 00 00 	lea    0x10b4(%rip),%rsi        # 402f <_IO_stdin_used+0x2f>
    2f7b:	ba 13 00 00 00       	mov    $0x13,%edx
    2f80:	48 8d 3d b9 30 00 00 	lea    0x30b9(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    2f87:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    2f8d:	e8 3e f3 ff ff       	callq  22d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2f92:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
    2f98:	48 8d 3d a1 30 00 00 	lea    0x30a1(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    2f9f:	e8 ac f3 ff ff       	callq  2350 <_ZNSo9_M_insertIdEERSoT_@plt>
    2fa4:	48 89 c5             	mov    %rax,%rbp
    2fa7:	ba 02 00 00 00       	mov    $0x2,%edx
    2fac:	48 8d 35 65 10 00 00 	lea    0x1065(%rip),%rsi        # 4018 <_IO_stdin_used+0x18>
    2fb3:	48 89 c7             	mov    %rax,%rdi
    2fb6:	e8 15 f3 ff ff       	callq  22d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2fbb:	48 8b 45 00          	mov    0x0(%rbp),%rax
    2fbf:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    2fc3:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
    2fca:	00 
    2fcb:	4d 85 e4             	test   %r12,%r12
    2fce:	74 5b                	je     302b <hash_table_alt+0x1ab>
    2fd0:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
    2fd6:	74 28                	je     3000 <hash_table_alt+0x180>
    2fd8:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
    2fde:	48 89 ef             	mov    %rbp,%rdi
    2fe1:	e8 0a f2 ff ff       	callq  21f0 <_ZNSo3putEc@plt>
    2fe6:	48 83 c4 10          	add    $0x10,%rsp
    2fea:	5b                   	pop    %rbx
    2feb:	5d                   	pop    %rbp
    2fec:	48 89 c7             	mov    %rax,%rdi
    2fef:	41 5c                	pop    %r12
    2ff1:	e9 5a f2 ff ff       	jmpq   2250 <_ZNSo5flushEv@plt>
    2ff6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2ffd:	00 00 00 
    3000:	4c 89 e7             	mov    %r12,%rdi
    3003:	e8 d8 f2 ff ff       	callq  22e0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    3008:	49 8b 04 24          	mov    (%r12),%rax
    300c:	48 8d 15 2d 00 00 00 	lea    0x2d(%rip),%rdx        # 3040 <_ZNKSt5ctypeIcE8do_widenEc>
    3013:	48 8b 40 30          	mov    0x30(%rax),%rax
    3017:	be 0a 00 00 00       	mov    $0xa,%esi
    301c:	48 39 d0             	cmp    %rdx,%rax
    301f:	74 bd                	je     2fde <hash_table_alt+0x15e>
    3021:	4c 89 e7             	mov    %r12,%rdi
    3024:	ff d0                	callq  *%rax
    3026:	0f be f0             	movsbl %al,%esi
    3029:	eb b3                	jmp    2fde <hash_table_alt+0x15e>
    302b:	e8 d0 f2 ff ff       	callq  2300 <_ZSt16__throw_bad_castv@plt>

Disassembly of section .fini:
