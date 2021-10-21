
./test:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .plt.sec:

Disassembly of section .text:

0000000000002f80 <hash_table_alt>:
    2f80:	f3 0f 1e fa          	endbr64 
    2f84:	41 57                	push   %r15
    2f86:	be ff 00 00 00       	mov    $0xff,%esi
    2f8b:	b8 06 00 00 00       	mov    $0x6,%eax
    2f90:	41 56                	push   %r14
    2f92:	41 55                	push   %r13
    2f94:	41 54                	push   %r12
    2f96:	55                   	push   %rbp
    2f97:	53                   	push   %rbx
    2f98:	48 83 ec 18          	sub    $0x18,%rsp
    2f9c:	48 8b 3d cd 31 00 00 	mov    0x31cd(%rip),%rdi        # 6170 <table_alt>
    2fa3:	c4 e2 f9 f7 15 6c 30 	shlx   %rax,0x306c(%rip),%rdx        # 6018 <table_size>
    2faa:	00 00 
    2fac:	e8 8f f2 ff ff       	callq  2240 <memset@plt>
    2fb1:	48 c7 05 a4 31 00 00 	movq   $0x0,0x31a4(%rip)        # 6160 <table_count>
    2fb8:	00 00 00 00 
    2fbc:	e8 5f f3 ff ff       	callq  2320 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    2fc1:	48 8b 35 08 32 00 00 	mov    0x3208(%rip),%rsi        # 61d0 <random_numbers>
    2fc8:	4c 8b 0d 09 32 00 00 	mov    0x3209(%rip),%r9        # 61d8 <random_numbers+0x8>
    2fcf:	48 89 c3             	mov    %rax,%rbx
    2fd2:	49 39 f1             	cmp    %rsi,%r9
    2fd5:	0f 84 b1 00 00 00    	je     308c <hash_table_alt+0x10c>
    2fdb:	4c 8b 2d 16 32 00 00 	mov    0x3216(%rip),%r13        # 61f8 <hash_prime+0x8>
    2fe2:	44 8b 25 17 32 00 00 	mov    0x3217(%rip),%r12d        # 6200 <hash_prime+0x10>
    2fe9:	48 8b 2d 00 32 00 00 	mov    0x3200(%rip),%rbp        # 61f0 <hash_prime>
    2ff0:	4c 8b 1d 79 31 00 00 	mov    0x3179(%rip),%r11        # 6170 <table_alt>
    2ff7:	45 31 d2             	xor    %r10d,%r10d
    2ffa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3000:	4c 8b 06             	mov    (%rsi),%r8
    3003:	4c 8b 35 06 30 00 00 	mov    0x3006(%rip),%r14        # 6010 <empty_key>
    300a:	4c 89 c2             	mov    %r8,%rdx
    300d:	c4 c2 fb f6 d5       	mulx   %r13,%rax,%rdx
    3012:	4c 89 c7             	mov    %r8,%rdi
    3015:	4c 8b 3d fc 2f 00 00 	mov    0x2ffc(%rip),%r15        # 6018 <table_size>
    301c:	c4 e2 9b f7 c2       	shrx   %r12,%rdx,%rax
    3021:	48 0f af c5          	imul   %rbp,%rax
    3025:	48 29 c7             	sub    %rax,%rdi
    3028:	48 89 f8             	mov    %rdi,%rax
    302b:	bf 00 04 00 00       	mov    $0x400,%edi
    3030:	eb 15                	jmp    3047 <hash_table_alt+0xc7>
    3032:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3038:	48 ff c0             	inc    %rax
    303b:	4c 39 f8             	cmp    %r15,%rax
    303e:	49 0f 44 c2          	cmove  %r10,%rax
    3042:	48 ff cf             	dec    %rdi
    3045:	74 38                	je     307f <hash_table_alt+0xff>
    3047:	48 89 c1             	mov    %rax,%rcx
    304a:	48 c1 e1 06          	shl    $0x6,%rcx
    304e:	4c 01 d9             	add    %r11,%rcx
    3051:	4c 39 71 30          	cmp    %r14,0x30(%rcx)
    3055:	75 e1                	jne    3038 <hash_table_alt+0xb8>
    3057:	31 d2                	xor    %edx,%edx
    3059:	eb 0e                	jmp    3069 <hash_table_alt+0xe9>
    305b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3060:	48 ff c2             	inc    %rdx
    3063:	48 83 fa 07          	cmp    $0x7,%rdx
    3067:	74 cf                	je     3038 <hash_table_alt+0xb8>
    3069:	4c 3b 34 d1          	cmp    (%rcx,%rdx,8),%r14
    306d:	75 f1                	jne    3060 <hash_table_alt+0xe0>
    306f:	4c 89 04 d1          	mov    %r8,(%rcx,%rdx,8)
    3073:	c6 44 11 38 01       	movb   $0x1,0x38(%rcx,%rdx,1)
    3078:	48 ff 05 e1 30 00 00 	incq   0x30e1(%rip)        # 6160 <table_count>
    307f:	48 83 c6 08          	add    $0x8,%rsi
    3083:	49 39 f1             	cmp    %rsi,%r9
    3086:	0f 85 74 ff ff ff    	jne    3000 <hash_table_alt+0x80>
    308c:	e8 8f f2 ff ff       	callq  2320 <_ZNSt6chrono3_V212steady_clock3nowEv@plt>
    3091:	48 29 d8             	sub    %rbx,%rax
    3094:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
    309b:	de 1b 43 
    309e:	48 89 c1             	mov    %rax,%rcx
    30a1:	48 f7 ea             	imul   %rdx
    30a4:	48 c1 f9 3f          	sar    $0x3f,%rcx
    30a8:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
    30ac:	48 c1 fa 12          	sar    $0x12,%rdx
    30b0:	48 29 ca             	sub    %rcx,%rdx
    30b3:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
    30b8:	48 8d 35 70 0f 00 00 	lea    0xf70(%rip),%rsi        # 402f <_IO_stdin_used+0x2f>
    30bf:	ba 13 00 00 00       	mov    $0x13,%edx
    30c4:	48 8d 3d 75 2f 00 00 	lea    0x2f75(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    30cb:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
    30d1:	e8 0a f2 ff ff       	callq  22e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    30d6:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
    30dc:	48 8d 3d 5d 2f 00 00 	lea    0x2f5d(%rip),%rdi        # 6040 <_ZSt4cout@@GLIBCXX_3.4>
    30e3:	e8 88 f2 ff ff       	callq  2370 <_ZNSo9_M_insertIdEERSoT_@plt>
    30e8:	48 89 c5             	mov    %rax,%rbp
    30eb:	ba 02 00 00 00       	mov    $0x2,%edx
    30f0:	48 8d 35 21 0f 00 00 	lea    0xf21(%rip),%rsi        # 4018 <_IO_stdin_used+0x18>
    30f7:	48 89 c7             	mov    %rax,%rdi
    30fa:	e8 e1 f1 ff ff       	callq  22e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    30ff:	48 8b 45 00          	mov    0x0(%rbp),%rax
    3103:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    3107:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
    310e:	00 
    310f:	4d 85 e4             	test   %r12,%r12
    3112:	74 57                	je     316b <hash_table_alt+0x1eb>
    3114:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
    311a:	74 24                	je     3140 <hash_table_alt+0x1c0>
    311c:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
    3122:	48 89 ef             	mov    %rbp,%rdi
    3125:	e8 d6 f0 ff ff       	callq  2200 <_ZNSo3putEc@plt>
    312a:	48 83 c4 18          	add    $0x18,%rsp
    312e:	5b                   	pop    %rbx
    312f:	5d                   	pop    %rbp
    3130:	41 5c                	pop    %r12
    3132:	41 5d                	pop    %r13
    3134:	41 5e                	pop    %r14
    3136:	48 89 c7             	mov    %rax,%rdi
    3139:	41 5f                	pop    %r15
    313b:	e9 20 f1 ff ff       	jmpq   2260 <_ZNSo5flushEv@plt>
    3140:	4c 89 e7             	mov    %r12,%rdi
    3143:	e8 a8 f1 ff ff       	callq  22f0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    3148:	49 8b 04 24          	mov    (%r12),%rax
    314c:	48 8d 15 2d 00 00 00 	lea    0x2d(%rip),%rdx        # 3180 <_ZNKSt5ctypeIcE8do_widenEc>
    3153:	48 8b 40 30          	mov    0x30(%rax),%rax
    3157:	be 0a 00 00 00       	mov    $0xa,%esi
    315c:	48 39 d0             	cmp    %rdx,%rax
    315f:	74 c1                	je     3122 <hash_table_alt+0x1a2>
    3161:	4c 89 e7             	mov    %r12,%rdi
    3164:	ff d0                	callq  *%rax
    3166:	0f be f0             	movsbl %al,%esi
    3169:	eb b7                	jmp    3122 <hash_table_alt+0x1a2>
    316b:	e8 a0 f1 ff ff       	callq  2310 <_ZSt16__throw_bad_castv@plt>

Disassembly of section .fini:
