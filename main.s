	.file	"main.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the number of vertices: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Enter the number of edges: "
.LC3:
	.string	"Enter a vertex: "
.LC4:
	.string	" %c"
.LC5:
	.string	"Enter the edge (start, end)"
.LC6:
	.string	" %c %c"
	.text
	.globl	read_s_graph
	.type	read_s_graph, @function
read_s_graph:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, -16(%rbp)
	jmp	.L2
.L3:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-25(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-25(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	movb	%cl, 8(%rdx,%rax)
	addl	$1, -16(%rbp)
.L2:
	movl	-24(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L3
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	$0, -12(%rbp)
	jmp	.L4
.L5:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-25(%rbp), %rdx
	leaq	-26(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-26(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$48, %rcx
	movb	%dl, 12(%rax,%rcx,2)
	movzbl	-25(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movb	%cl, 109(%rax,%rdx,2)
	addl	$1, -12(%rbp)
.L4:
	movl	-20(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L5
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	read_s_graph, .-read_s_graph
	.section	.rodata
.LC7:
	.string	"No. of vertices: %d \n"
.LC8:
	.string	"No. of edges: %d \n"
.LC9:
	.string	"Vertices: "
.LC10:
	.string	"%c "
.LC11:
	.string	"\nEdges:"
.LC12:
	.string	"%c %c\n"
	.text
	.globl	print_s_graph
	.type	print_s_graph, @function
print_s_graph:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -16(%rbp)
	jmp	.L8
.L9:
	movq	-24(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	movzbl	8(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -16(%rbp)
.L8:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L9
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -12(%rbp)
	jmp	.L10
.L11:
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	109(%rax,%rdx,2), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$48, %rcx
	movzbl	12(%rax,%rcx,2), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -12(%rbp)
.L10:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L11
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	print_s_graph, .-print_s_graph
	.globl	su_arr
	.bss
	.align 32
	.type	su_arr, @object
	.size	su_arr, 5370800
su_arr:
	.zero	5370800
	.section	.rodata
.LC13:
	.string	"Enter the name of the graph: "
.LC14:
	.string	"%s"
.LC15:
	.string	" %d %d"
	.text
	.globl	read_su_graph
	.type	read_su_graph, @function
read_su_graph:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	addq	$108, %rax
	movq	%rax, -16(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 100(%rax)
	movl	$0, -28(%rbp)
	jmp	.L13
.L14:
	movq	-56(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$108, %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$120, %rax
	movl	$0, (%rax)
	addl	$1, -28(%rbp)
.L13:
	movl	-44(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L14
	movl	-40(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 104(%rax)
	movl	$0, -24(%rbp)
	jmp	.L15
.L17:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L16
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
.L16:
	movl	-36(%rbp), %ecx
	movq	-56(%rbp), %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$41708, %rax
	movl	%ecx, (%rax)
	movl	-32(%rbp), %ecx
	movq	-56(%rbp), %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$41712, %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$41716, %rax
	movl	$0, (%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-32(%rbp), %eax
	movslq	%edx, %rdx
	addq	$4, %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-36(%rbp), %eax
	movslq	%edx, %rdx
	addq	$4, %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	addl	$1, -24(%rbp)
.L15:
	movl	-40(%rbp), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L17
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	read_su_graph, .-read_su_graph
	.section	.rodata
.LC16:
	.string	"\n%s\n"
.LC17:
	.string	"No. of vertices: %d\n"
.LC18:
	.string	"No. of edges: %d\n"
.LC19:
	.string	"degree of %d: %d\n"
.LC20:
	.string	"edge %d: %d - %d\n"
	.text
	.globl	print_su_graph
	.type	print_su_graph, @function
print_su_graph:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movl	104(%rax), %eax
	movl	%eax, %esi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -16(%rbp)
	jmp	.L20
.L21:
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$108, %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -16(%rbp)
.L20:
	movq	-24(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L21
	movl	$0, -12(%rbp)
	jmp	.L22
.L23:
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$41708, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$41712, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -12(%rbp)
.L22:
	movq	-24(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L23
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	print_su_graph, .-print_su_graph
	.section	.rodata
.LC21:
	.string	"wb"
.LC22:
	.string	"file wasn't opened"
	.text
	.globl	write_su_graph
	.type	write_su_graph, @function
write_su_graph:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$7525622121324574067, %rax
	movl	$12147, %edx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -16(%rbp)
	movq	-136(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-112(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L25
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L25:
	movq	-120(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$53708, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	write_su_graph, .-write_su_graph
	.section	.rodata
.LC23:
	.string	"su_graphs"
.LC24:
	.string	"couldn't open directory"
.LC25:
	.string	"."
.LC26:
	.string	".."
.LC27:
	.string	"rb"
.LC28:
	.string	"Error opening file\n"
	.text
	.globl	load_su_graph
	.type	load_su_graph, @function
load_su_graph:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	opendir@PLT
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.L28
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L28:
	movl	$0, -256(%rbp)
	jmp	.L29
.L33:
	movabsq	$7525622121324574067, %rax
	movl	$12147, %edx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movl	$0, -128(%rbp)
	movq	-240(%rbp), %rax
	leaq	19(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-240(%rbp), %rax
	addq	$19, %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L29
	movq	-240(%rbp), %rax
	addq	$19, %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L31
	jmp	.L29
.L31:
	leaq	-112(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-224(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -232(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.L32
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L32:
	movl	-256(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -256(%rbp)
	cltq
	imulq	$53708, %rax, %rax
	leaq	su_arr(%rip), %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-232(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$53708, %esi
	call	fread@PLT
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L29:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.L33
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	movl	$0, -252(%rbp)
	jmp	.L34
.L35:
	movl	-252(%rbp), %eax
	cltq
	imulq	$53708, %rax, %rax
	leaq	su_arr(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	space_vertices_su_graph
	addl	$1, -252(%rbp)
.L34:
	movl	-252(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L35
	movl	-256(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	load_su_graph, .-load_su_graph
	.section	.rodata
.LC29:
	.string	"Enter a valid graph name"
	.text
	.globl	print_loaded_su_graph
	.type	print_loaded_su_graph, @function
print_loaded_su_graph:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -132(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -116(%rbp)
	jmp	.L39
.L42:
	movl	-116(%rbp), %eax
	cltq
	imulq	$53708, %rax, %rax
	leaq	su_arr(%rip), %rdx
	addq	%rax, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L40
	movl	-116(%rbp), %eax
	cltq
	imulq	$53708, %rax, %rax
	leaq	su_arr(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	print_su_graph
	movl	-132(%rbp), %eax
	jmp	.L38
.L40:
	addl	$1, -116(%rbp)
.L39:
	movl	-116(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L42
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	print_loaded_su_graph
.L38:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L43
	call	__stack_chk_fail@PLT
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	print_loaded_su_graph, .-print_loaded_su_graph
	.globl	space_vertices_su_graph
	.type	space_vertices_su_graph, @function
space_vertices_su_graph:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC30(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L45
.L46:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	-8(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	cos@PLT
	movsd	.LC31(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC32(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %ecx
	movq	-40(%rbp), %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$112, %rax
	movl	%ecx, (%rax)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	-8(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movsd	.LC31(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC33(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %ecx
	movq	-40(%rbp), %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$116, %rax
	movl	%ecx, (%rax)
	addl	$1, -24(%rbp)
.L45:
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L46
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$87, %al
	jne	.L50
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	subl	$1, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC30(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	subl	$1, %eax
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$112, %rax
	movl	$955, (%rax)
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	subl	$1, %eax
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$116, %rax
	movl	$535, (%rax)
	movl	$0, -20(%rbp)
	jmp	.L48
.L49:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	-8(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	cos@PLT
	movsd	.LC31(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC32(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %ecx
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$112, %rax
	movl	%ecx, (%rax)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	-8(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movsd	.LC31(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC33(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %ecx
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rsi, %rax
	addq	$116, %rax
	movl	%ecx, (%rax)
	addl	$1, -20(%rbp)
.L48:
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L49
.L50:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	space_vertices_su_graph, .-space_vertices_su_graph
	.section	.rodata
.LC34:
	.string	"%d%d"
	.text
	.globl	draw_su_vertex
	.type	draw_su_vertex, @function
draw_su_vertex:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpl	$9, -60(%rbp)
	jg	.L52
	movl	-60(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L53
.L52:
	movl	-60(%rbp), %edx
	leaq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L53:
	movb	$0, %bl
	movl	$121, %eax
	movb	%al, %bh
	movl	%ebx, %eax
	andl	$-16711681, %eax
	orl	$15794176, %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%ebx, %edx
	movl	.LC35(%rip), %esi
	movd	%esi, %xmm0
	movl	%ecx, %esi
	movl	%eax, %edi
	call	DrawCircle@PLT
	movl	-64(%rbp), %ecx
	movb	$0, %cl
	movl	$0, %eax
	movb	%al, %ch
	andl	$-16711681, %ecx
	movl	%ecx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	leal	-14(%rax), %edx
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	leal	-16(%rax), %esi
	leaq	-48(%rbp), %rax
	movl	%ebx, %r8d
	movl	$30, %ecx
	movq	%rax, %rdi
	call	DrawText@PLT
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L54
	call	__stack_chk_fail@PLT
.L54:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	draw_su_vertex, .-draw_su_vertex
	.globl	draw_su_graph
	.type	draw_su_graph, @function
draw_su_graph:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L56
.L57:
	movb	$0, %bl
	movl	$0, %eax
	movb	%al, %bh
	movl	%ebx, %eax
	andl	$-16711681, %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ebx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	41696(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	draw_su_edge
	addl	$1, -24(%rbp)
.L56:
	movq	-40(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L57
	movl	$0, -20(%rbp)
	jmp	.L58
.L59:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	96(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	draw_su_vertex
	addl	$1, -20(%rbp)
.L58:
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L59
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	draw_su_graph, .-draw_su_graph
	.globl	draw_su_edge
	.type	draw_su_edge, @function
draw_su_edge:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$112, %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movd	%xmm0, %edx
	movabsq	$-4294967296, %rax
	andq	%r9, %rax
	orq	%rdx, %rax
	movq	%rax, %r9
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$116, %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movd	%xmm0, %eax
	salq	$32, %rax
	movl	%r9d, %edx
	orq	%rdx, %rax
	movq	%rax, %r9
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$112, %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movd	%xmm0, %edx
	movabsq	$-4294967296, %rax
	andq	%r8, %rax
	orq	%rdx, %rax
	movq	%rax, %r8
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	addq	$116, %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movd	%xmm0, %eax
	salq	$32, %rax
	movl	%r8d, %edx
	orq	%rdx, %rax
	movq	%rax, %r8
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	movss	.LC36(%rip), %xmm2
	movq	%r9, %xmm1
	movq	%r8, %xmm0
	call	DrawLineEx@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	draw_su_edge, .-draw_su_edge
	.globl	is_hovered
	.type	is_hovered, @function
is_hovered:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%xmm0, -32(%rbp)
	movss	%xmm1, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	-32(%rbp), %xmm1
	subss	%xmm1, %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movsd	.LC37(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	-28(%rbp), %xmm1
	subss	%xmm1, %xmm0
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movsd	.LC37(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movapd	%xmm0, %xmm2
	addsd	-48(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-36(%rbp), %xmm0
	comiss	-4(%rbp), %xmm0
	jb	.L66
	movl	$1, %eax
	jmp	.L64
.L66:
	movl	$0, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	is_hovered, .-is_hovered
	.globl	highlight_vertex
	.type	highlight_vertex, @function
highlight_vertex:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	-16(%rbp), %edx
	movl	.LC38(%rip), %esi
	movd	%esi, %xmm0
	movl	%ecx, %esi
	movl	%eax, %edi
	call	DrawCircle@PLT
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	draw_su_vertex
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	highlight_vertex, .-highlight_vertex
	.globl	highlight_neighbours
	.type	highlight_neighbours, @function
highlight_neighbours:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L69
.L70:
	movb	$-126, %bl
	movl	$-126, %eax
	movb	%al, %bh
	movl	%ebx, %eax
	andl	$-16711681, %eax
	orl	$8519680, %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	$4, %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	$4, %rdx
	movl	(%rax,%rdx,4), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	96(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	highlight_vertex
	addl	$1, -20(%rbp)
.L69:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L70
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	highlight_neighbours, .-highlight_neighbours
	.globl	highlight_edge
	.type	highlight_edge, @function
highlight_edge:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movb	$-26, %al
	movl	$41, %edx
	movb	%dl, %ah
	andl	$-16711681, %eax
	orl	$3604480, %eax
	orl	$-16777216, %eax
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	draw_su_edge
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	draw_su_vertex
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	draw_su_vertex
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	highlight_edge, .-highlight_edge
	.section	.rodata
	.align 8
.LC39:
	.string	"raylib [core] example - basic window"
	.text
	.globl	main
	.type	main, @function
main:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, %eax
	call	load_su_graph
	movl	%eax, -32(%rbp)
	movl	$0, -56(%rbp)
	movl	$20, -52(%rbp)
	movl	$20, -48(%rbp)
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdx
	movl	$1070, %esi
	movl	$1910, %edi
	call	InitWindow@PLT
	jmp	.L73
.L91:
	call	GetMousePosition@PLT
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	call	BeginDrawing@PLT
	movb	$-1, %bl
	movl	$-1, %eax
	movb	%al, %bh
	movl	%ebx, %eax
	orl	$16711680, %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ebx
	movl	%ebx, %edi
	call	ClearBackground@PLT
	call	GetKeyPressed@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L74
	cmpl	$47, -28(%rbp)
	jle	.L74
	cmpl	$57, -28(%rbp)
	jg	.L74
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -64(%rbp)
.L74:
	cmpl	$68, -28(%rbp)
	jne	.L75
	movl	-32(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -64(%rbp)
	jge	.L75
	addl	$1, -64(%rbp)
.L75:
	cmpl	$65, -28(%rbp)
	jne	.L76
	cmpl	$0, -64(%rbp)
	jle	.L76
	subl	$1, -64(%rbp)
.L76:
	cmpl	$1, -56(%rbp)
	jle	.L77
	movl	$0, -56(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L78
.L79:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	120+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -44(%rbp)
.L78:
	movl	-64(%rbp), %eax
	cltq
	imulq	$53708, %rax, %rax
	leaq	100+su_arr(%rip), %rdx
	movl	(%rax,%rdx), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L79
.L77:
	movl	-92(%rbp), %ecx
	movb	$0, %cl
	movl	$0, %eax
	movb	%al, %ch
	andl	$-16711681, %ecx
	movl	%ecx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)
	movl	-64(%rbp), %eax
	cltq
	imulq	$53708, %rax, %rax
	leaq	su_arr(%rip), %rdx
	addq	%rdx, %rax
	movl	%ecx, %r8d
	movl	$60, %ecx
	movl	$40, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	DrawText@PLT
	movl	-64(%rbp), %eax
	cltq
	imulq	$53708, %rax, %rax
	leaq	su_arr(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	draw_su_graph
	movl	$0, -40(%rbp)
	jmp	.L80
.L85:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$53708, %rdx, %rdx
	addq	%rdx, %rax
	leaq	96(%rax), %rdx
	leaq	su_arr(%rip), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	-24(%rbp), %rdx
	movss	.LC35(%rip), %xmm1
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	is_hovered
	testl	%eax, %eax
	je	.L81
	movl	-72(%rbp), %ecx
	movb	$0, %cl
	movl	$0, %eax
	movb	%al, %ch
	andl	$-16711681, %ecx
	movl	%ecx, %eax
	orl	$-16777216, %eax
	movl	%eax, -72(%rbp)
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$53708, %rdx, %rdx
	addq	%rdx, %rax
	leaq	96(%rax), %rdx
	leaq	su_arr(%rip), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rcx
	movl	-40(%rbp), %eax
	movl	-72(%rbp), %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	highlight_vertex
	movl	-64(%rbp), %eax
	cltq
	imulq	$53708, %rax, %rax
	leaq	su_arr(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$53708, %rdx, %rdx
	addq	%rdx, %rax
	leaq	96(%rax), %rdx
	leaq	su_arr(%rip), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	highlight_neighbours
.L81:
	movl	$0, %edi
	call	IsMouseButtonPressed@PLT
	testb	%al, %al
	je	.L82
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$53708, %rdx, %rdx
	addq	%rdx, %rax
	leaq	96(%rax), %rdx
	leaq	su_arr(%rip), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	-24(%rbp), %rdx
	movss	.LC35(%rip), %xmm1
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	is_hovered
	testl	%eax, %eax
	je	.L82
	movl	-40(%rbp), %eax
	movl	%eax, -60(%rbp)
	movss	-24(%rbp), %xmm0
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	112+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movss	-20(%rbp), %xmm0
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	116+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, -48(%rbp)
.L82:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	120+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L83
	movl	-84(%rbp), %ecx
	movb	$-1, %cl
	movl	$-53, %eax
	movb	%al, %ch
	andl	$-16711681, %ecx
	movl	%ecx, %eax
	orl	$-16777216, %eax
	movl	%eax, -84(%rbp)
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$53708, %rdx, %rdx
	addq	%rdx, %rax
	leaq	96(%rax), %rdx
	leaq	su_arr(%rip), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rcx
	movl	-40(%rbp), %eax
	movl	-84(%rbp), %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	highlight_vertex
.L83:
	movl	$1, %edi
	call	IsMouseButtonPressed@PLT
	testb	%al, %al
	je	.L84
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$53708, %rdx, %rdx
	addq	%rdx, %rax
	leaq	96(%rax), %rdx
	leaq	su_arr(%rip), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	-24(%rbp), %rdx
	movss	.LC35(%rip), %xmm1
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	is_hovered
	testl	%eax, %eax
	je	.L84
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	120+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ecx
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rsi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rsi, %rdx
	addq	%rax, %rdx
	leaq	120+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	%ecx, (%rax)
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	120+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L84
	addl	$1, -56(%rbp)
.L84:
	addl	$1, -40(%rbp)
.L80:
	movl	-64(%rbp), %eax
	cltq
	imulq	$53708, %rax, %rax
	leaq	100+su_arr(%rip), %rdx
	movl	(%rax,%rdx), %eax
	cmpl	%eax, -40(%rbp)
	jl	.L85
	movl	$0, %edi
	call	IsMouseButtonDown@PLT
	testb	%al, %al
	je	.L86
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$53708, %rdx, %rdx
	addq	%rdx, %rax
	leaq	96(%rax), %rdx
	leaq	su_arr(%rip), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	-24(%rbp), %rdx
	movss	.LC40(%rip), %xmm1
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	is_hovered
	testl	%eax, %eax
	je	.L86
	movss	-24(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-52(%rbp), %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %ecx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rsi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rsi, %rdx
	addq	%rax, %rdx
	leaq	112+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	%ecx, (%rax)
	movss	-20(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-48(%rbp), %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %ecx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rsi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rsi, %rdx
	addq	%rax, %rdx
	leaq	116+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	%ecx, (%rax)
.L86:
	movl	$0, -36(%rbp)
	jmp	.L87
.L90:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	41708+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	120+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L88
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	41712+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	120+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L88
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	41708+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	120+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	41712+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	120+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	41716+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rsi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	imulq	$53708, %rsi, %rdx
	addq	%rax, %rdx
	leaq	41716+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	%ecx, (%rax)
.L88:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	imulq	$53708, %rcx, %rdx
	addq	%rax, %rdx
	leaq	41716+su_arr(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L89
	movl	-88(%rbp), %ecx
	movb	$-1, %cl
	movl	$-53, %eax
	movb	%al, %ch
	andl	$-16711681, %ecx
	movl	%ecx, %eax
	orl	$-16777216, %eax
	movl	%eax, -88(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$53708, %rdx, %rdx
	addq	%rdx, %rax
	leaq	41696(%rax), %rdx
	leaq	su_arr(%rip), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rcx
	movl	-64(%rbp), %eax
	cltq
	imulq	$53708, %rax, %rax
	leaq	su_arr(%rip), %rdx
	addq	%rdx, %rax
	movl	-88(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	highlight_edge
.L89:
	addl	$1, -36(%rbp)
.L87:
	movl	-64(%rbp), %eax
	cltq
	imulq	$53708, %rax, %rax
	leaq	104+su_arr(%rip), %rdx
	movl	(%rax,%rdx), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L90
	call	EndDrawing@PLT
.L73:
	call	WindowShouldClose@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L91
	call	CloseWindow@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC30:
	.long	1413754136
	.long	1075388923
	.align 8
.LC31:
	.long	0
	.long	1081262080
	.align 8
.LC32:
	.long	0
	.long	1083037696
	.align 8
.LC33:
	.long	0
	.long	1082177536
	.align 4
.LC35:
	.long	1106247680
	.align 4
.LC36:
	.long	1077936128
	.align 8
.LC37:
	.long	0
	.long	1073741824
	.align 4
.LC38:
	.long	1108606976
	.align 4
.LC40:
	.long	1140457472
	.ident	"GCC: (GNU) 14.2.1 20240910"
	.section	.note.GNU-stack,"",@progbits
