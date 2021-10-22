
./test_binary:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .text:

0000000000405900 <hash_table_ok>:
  405900:	f3 0f 1e fa          	endbr64 
  405904:	41 54                	push   %r12
  405906:	ba 00 00 00 40       	mov    $0x40000000,%edx
  40590b:	31 f6                	xor    %esi,%esi
  40590d:	55                   	push   %rbp
  40590e:	53                   	push   %rbx
  40590f:	48 83 ec 10          	sub    $0x10,%rsp
  405913:	48 8b 3d e6 0c 1d 00 	mov    0x1d0ce6(%rip),%rdi        # 5d6600 <table_ok>
  40591a:	e8 81 b7 ff ff       	callq  4010a0 <.plt+0x80>
  40591f:	48 c7 05 86 0c 1d 00 	movq   $0x0,0x1d0c86(%rip)        # 5d65b0 <table_count>
  405926:	00 00 00 00 
  40592a:	e8 91 97 00 00       	callq  40f0c0 <_ZNSt6chrono3_V212steady_clock3nowEv>
  40592f:	4c 8b 0d f2 0c 1d 00 	mov    0x1d0cf2(%rip),%r9        # 5d6628 <random_numbers+0x8>
  405936:	48 8b 3d e3 0c 1d 00 	mov    0x1d0ce3(%rip),%rdi        # 5d6620 <random_numbers>
  40593d:	4c 8b 1d bc 0c 1d 00 	mov    0x1d0cbc(%rip),%r11        # 5d6600 <table_ok>
  405944:	48 89 c3             	mov    %rax,%rbx
  405947:	45 31 d2             	xor    %r10d,%r10d
  40594a:	49 39 f9             	cmp    %rdi,%r9
  40594d:	74 5f                	je     4059ae <hash_table_ok+0xae>
  40594f:	90                   	nop
  405950:	4c 8b 07             	mov    (%rdi),%r8
  405953:	be 00 04 00 00       	mov    $0x400,%esi
  405958:	4c 89 c0             	mov    %r8,%rax
  40595b:	25 ff ff ff 00       	and    $0xffffff,%eax
  405960:	eb 18                	jmp    40597a <hash_table_ok+0x7a>
  405962:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405968:	48 ff c0             	inc    %rax
  40596b:	48 3d 00 00 00 01    	cmp    $0x1000000,%rax
  405971:	49 0f 44 c2          	cmove  %r10,%rax
  405975:	48 ff ce             	dec    %rsi
  405978:	74 2b                	je     4059a5 <hash_table_ok+0xa5>
  40597a:	48 89 c2             	mov    %rax,%rdx
  40597d:	48 c1 e2 06          	shl    $0x6,%rdx
  405981:	4c 01 da             	add    %r11,%rdx
  405984:	0f b6 4a 3f          	movzbl 0x3f(%rdx),%ecx
  405988:	80 f9 07             	cmp    $0x7,%cl
  40598b:	74 db                	je     405968 <hash_table_ok+0x68>
  40598d:	0f b6 c1             	movzbl %cl,%eax
  405990:	4c 89 04 c2          	mov    %r8,(%rdx,%rax,8)
  405994:	ff c1                	inc    %ecx
  405996:	c6 44 02 38 01       	movb   $0x1,0x38(%rdx,%rax,1)
  40599b:	48 ff 05 0e 0c 1d 00 	incq   0x1d0c0e(%rip)        # 5d65b0 <table_count>
  4059a2:	88 4a 3f             	mov    %cl,0x3f(%rdx)
  4059a5:	48 83 c7 08          	add    $0x8,%rdi
  4059a9:	49 39 f9             	cmp    %rdi,%r9
  4059ac:	75 a2                	jne    405950 <hash_table_ok+0x50>
  4059ae:	e8 0d 97 00 00       	callq  40f0c0 <_ZNSt6chrono3_V212steady_clock3nowEv>
  4059b3:	48 29 d8             	sub    %rbx,%rax
  4059b6:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
  4059bd:	de 1b 43 
  4059c0:	48 89 c1             	mov    %rax,%rcx
  4059c3:	48 f7 ea             	imul   %rdx
  4059c6:	48 c1 f9 3f          	sar    $0x3f,%rcx
  4059ca:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  4059ce:	48 c1 fa 12          	sar    $0x12,%rdx
  4059d2:	48 29 ca             	sub    %rcx,%rdx
  4059d5:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
  4059da:	48 8d 35 76 f6 16 00 	lea    0x16f676(%rip),%rsi        # 575057 <_IO_stdin_used+0x57>
  4059e1:	ba 13 00 00 00       	mov    $0x13,%edx
  4059e6:	48 8d 3d b3 1b 1d 00 	lea    0x1d1bb3(%rip),%rdi        # 5d75a0 <_ZSt4cout>
  4059ed:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
  4059f3:	e8 88 a8 06 00       	callq  470280 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  4059f8:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
  4059fe:	48 8d 3d 9b 1b 1d 00 	lea    0x1d1b9b(%rip),%rdi        # 5d75a0 <_ZSt4cout>
  405a05:	e8 f6 b8 06 00       	callq  471300 <_ZNSo9_M_insertIdEERSoT_>
  405a0a:	48 89 c5             	mov    %rax,%rbp
  405a0d:	ba 02 00 00 00       	mov    $0x2,%edx
  405a12:	48 8d 35 05 f6 16 00 	lea    0x16f605(%rip),%rsi        # 57501e <_IO_stdin_used+0x1e>
  405a19:	48 89 c7             	mov    %rax,%rdi
  405a1c:	e8 5f a8 06 00       	callq  470280 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  405a21:	48 8b 45 00          	mov    0x0(%rbp),%rax
  405a25:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  405a29:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
  405a30:	00 
  405a31:	4d 85 e4             	test   %r12,%r12
  405a34:	74 55                	je     405a8b <hash_table_ok+0x18b>
  405a36:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  405a3c:	74 22                	je     405a60 <hash_table_ok+0x160>
  405a3e:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  405a44:	48 89 ef             	mov    %rbp,%rdi
  405a47:	e8 b4 a3 06 00       	callq  46fe00 <_ZNSo3putEc>
  405a4c:	48 83 c4 10          	add    $0x10,%rsp
  405a50:	5b                   	pop    %rbx
  405a51:	5d                   	pop    %rbp
  405a52:	48 89 c7             	mov    %rax,%rdi
  405a55:	41 5c                	pop    %r12
  405a57:	e9 24 99 06 00       	jmpq   46f380 <_ZNSo5flushEv>
  405a5c:	0f 1f 40 00          	nopl   0x0(%rax)
  405a60:	4c 89 e7             	mov    %r12,%rdi
  405a63:	e8 58 85 01 00       	callq  41dfc0 <_ZNKSt5ctypeIcE13_M_widen_initEv>
  405a68:	49 8b 04 24          	mov    (%r12),%rax
  405a6c:	48 8d 15 cd 03 00 00 	lea    0x3cd(%rip),%rdx        # 405e40 <_ZNKSt5ctypeIcE8do_widenEc>
  405a73:	48 8b 40 30          	mov    0x30(%rax),%rax
  405a77:	be 0a 00 00 00       	mov    $0xa,%esi
  405a7c:	48 39 d0             	cmp    %rdx,%rax
  405a7f:	74 c3                	je     405a44 <hash_table_ok+0x144>
  405a81:	4c 89 e7             	mov    %r12,%rdi
  405a84:	ff d0                	callq  *%rax
  405a86:	0f be f0             	movsbl %al,%esi
  405a89:	eb b9                	jmp    405a44 <hash_table_ok+0x144>
  405a8b:	e8 8e cd ff ff       	callq  40281e <_ZSt16__throw_bad_castv>

Disassembly of section __libc_freeres_fn:

Disassembly of section .fini:
