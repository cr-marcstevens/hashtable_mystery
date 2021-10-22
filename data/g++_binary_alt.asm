
./test_binary:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .text:

0000000000405c80 <hash_table_alt>:
  405c80:	f3 0f 1e fa          	endbr64 
  405c84:	41 54                	push   %r12
  405c86:	ba 00 00 00 40       	mov    $0x40000000,%edx
  405c8b:	be ff 00 00 00       	mov    $0xff,%esi
  405c90:	55                   	push   %rbp
  405c91:	53                   	push   %rbx
  405c92:	48 83 ec 10          	sub    $0x10,%rsp
  405c96:	48 8b 3d 23 09 1d 00 	mov    0x1d0923(%rip),%rdi        # 5d65c0 <table_alt>
  405c9d:	e8 fe b3 ff ff       	callq  4010a0 <.plt+0x80>
  405ca2:	48 c7 05 03 09 1d 00 	movq   $0x0,0x1d0903(%rip)        # 5d65b0 <table_count>
  405ca9:	00 00 00 00 
  405cad:	e8 0e 94 00 00       	callq  40f0c0 <_ZNSt6chrono3_V212steady_clock3nowEv>
  405cb2:	4c 8b 15 6f 09 1d 00 	mov    0x1d096f(%rip),%r10        # 5d6628 <random_numbers+0x8>
  405cb9:	48 8b 3d 60 09 1d 00 	mov    0x1d0960(%rip),%rdi        # 5d6620 <random_numbers>
  405cc0:	48 8b 2d f9 08 1d 00 	mov    0x1d08f9(%rip),%rbp        # 5d65c0 <table_alt>
  405cc7:	48 89 c3             	mov    %rax,%rbx
  405cca:	45 31 db             	xor    %r11d,%r11d
  405ccd:	49 39 fa             	cmp    %rdi,%r10
  405cd0:	74 76                	je     405d48 <hash_table_alt+0xc8>
  405cd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405cd8:	4c 8b 0f             	mov    (%rdi),%r9
  405cdb:	4c 8b 05 4e e4 1c 00 	mov    0x1ce44e(%rip),%r8        # 5d4130 <empty_key>
  405ce2:	4c 89 c8             	mov    %r9,%rax
  405ce5:	25 ff ff ff 00       	and    $0xffffff,%eax
  405cea:	be 00 04 00 00       	mov    $0x400,%esi
  405cef:	eb 19                	jmp    405d0a <hash_table_alt+0x8a>
  405cf1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405cf8:	48 ff c0             	inc    %rax
  405cfb:	48 3d 00 00 00 01    	cmp    $0x1000000,%rax
  405d01:	49 0f 44 c3          	cmove  %r11,%rax
  405d05:	48 ff ce             	dec    %rsi
  405d08:	74 35                	je     405d3f <hash_table_alt+0xbf>
  405d0a:	48 89 c1             	mov    %rax,%rcx
  405d0d:	48 c1 e1 06          	shl    $0x6,%rcx
  405d11:	48 01 e9             	add    %rbp,%rcx
  405d14:	4c 39 41 30          	cmp    %r8,0x30(%rcx)
  405d18:	75 de                	jne    405cf8 <hash_table_alt+0x78>
  405d1a:	31 d2                	xor    %edx,%edx
  405d1c:	eb 0b                	jmp    405d29 <hash_table_alt+0xa9>
  405d1e:	66 90                	xchg   %ax,%ax
  405d20:	48 ff c2             	inc    %rdx
  405d23:	48 83 fa 07          	cmp    $0x7,%rdx
  405d27:	74 cf                	je     405cf8 <hash_table_alt+0x78>
  405d29:	4c 3b 04 d1          	cmp    (%rcx,%rdx,8),%r8
  405d2d:	75 f1                	jne    405d20 <hash_table_alt+0xa0>
  405d2f:	4c 89 0c d1          	mov    %r9,(%rcx,%rdx,8)
  405d33:	c6 44 11 38 01       	movb   $0x1,0x38(%rcx,%rdx,1)
  405d38:	48 ff 05 71 08 1d 00 	incq   0x1d0871(%rip)        # 5d65b0 <table_count>
  405d3f:	48 83 c7 08          	add    $0x8,%rdi
  405d43:	49 39 fa             	cmp    %rdi,%r10
  405d46:	75 90                	jne    405cd8 <hash_table_alt+0x58>
  405d48:	e8 73 93 00 00       	callq  40f0c0 <_ZNSt6chrono3_V212steady_clock3nowEv>
  405d4d:	48 29 d8             	sub    %rbx,%rax
  405d50:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
  405d57:	de 1b 43 
  405d5a:	48 89 c1             	mov    %rax,%rcx
  405d5d:	48 f7 ea             	imul   %rdx
  405d60:	48 c1 f9 3f          	sar    $0x3f,%rcx
  405d64:	c5 f8 57 c0          	vxorps %xmm0,%xmm0,%xmm0
  405d68:	48 c1 fa 12          	sar    $0x12,%rdx
  405d6c:	48 29 ca             	sub    %rcx,%rdx
  405d6f:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
  405d74:	48 8d 35 04 f3 16 00 	lea    0x16f304(%rip),%rsi        # 57507f <_IO_stdin_used+0x7f>
  405d7b:	ba 13 00 00 00       	mov    $0x13,%edx
  405d80:	48 8d 3d 19 18 1d 00 	lea    0x1d1819(%rip),%rdi        # 5d75a0 <_ZSt4cout>
  405d87:	c5 fb 11 44 24 08    	vmovsd %xmm0,0x8(%rsp)
  405d8d:	e8 ee a4 06 00       	callq  470280 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  405d92:	c5 fb 10 44 24 08    	vmovsd 0x8(%rsp),%xmm0
  405d98:	48 8d 3d 01 18 1d 00 	lea    0x1d1801(%rip),%rdi        # 5d75a0 <_ZSt4cout>
  405d9f:	e8 5c b5 06 00       	callq  471300 <_ZNSo9_M_insertIdEERSoT_>
  405da4:	48 89 c5             	mov    %rax,%rbp
  405da7:	ba 02 00 00 00       	mov    $0x2,%edx
  405dac:	48 8d 35 6b f2 16 00 	lea    0x16f26b(%rip),%rsi        # 57501e <_IO_stdin_used+0x1e>
  405db3:	48 89 c7             	mov    %rax,%rdi
  405db6:	e8 c5 a4 06 00       	callq  470280 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l>
  405dbb:	48 8b 45 00          	mov    0x0(%rbp),%rax
  405dbf:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  405dc3:	4c 8b a4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r12
  405dca:	00 
  405dcb:	4d 85 e4             	test   %r12,%r12
  405dce:	74 5b                	je     405e2b <hash_table_alt+0x1ab>
  405dd0:	41 80 7c 24 38 00    	cmpb   $0x0,0x38(%r12)
  405dd6:	74 28                	je     405e00 <hash_table_alt+0x180>
  405dd8:	41 0f be 74 24 43    	movsbl 0x43(%r12),%esi
  405dde:	48 89 ef             	mov    %rbp,%rdi
  405de1:	e8 1a a0 06 00       	callq  46fe00 <_ZNSo3putEc>
  405de6:	48 83 c4 10          	add    $0x10,%rsp
  405dea:	5b                   	pop    %rbx
  405deb:	5d                   	pop    %rbp
  405dec:	48 89 c7             	mov    %rax,%rdi
  405def:	41 5c                	pop    %r12
  405df1:	e9 8a 95 06 00       	jmpq   46f380 <_ZNSo5flushEv>
  405df6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405dfd:	00 00 00 
  405e00:	4c 89 e7             	mov    %r12,%rdi
  405e03:	e8 b8 81 01 00       	callq  41dfc0 <_ZNKSt5ctypeIcE13_M_widen_initEv>
  405e08:	49 8b 04 24          	mov    (%r12),%rax
  405e0c:	48 8d 15 2d 00 00 00 	lea    0x2d(%rip),%rdx        # 405e40 <_ZNKSt5ctypeIcE8do_widenEc>
  405e13:	48 8b 40 30          	mov    0x30(%rax),%rax
  405e17:	be 0a 00 00 00       	mov    $0xa,%esi
  405e1c:	48 39 d0             	cmp    %rdx,%rax
  405e1f:	74 bd                	je     405dde <hash_table_alt+0x15e>
  405e21:	4c 89 e7             	mov    %r12,%rdi
  405e24:	ff d0                	callq  *%rax
  405e26:	0f be f0             	movsbl %al,%esi
  405e29:	eb b3                	jmp    405dde <hash_table_alt+0x15e>
  405e2b:	e8 ee c9 ff ff       	callq  40281e <_ZSt16__throw_bad_castv>

Disassembly of section __libc_freeres_fn:

Disassembly of section .fini:
