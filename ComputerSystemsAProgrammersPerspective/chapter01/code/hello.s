main:
	subq	$40, %rsp
	movl	$0, 36(%rsp)
	leaq	"??_C@_0N@OLAOGCLC@hello?0?5world?$AA@"(%rip), %rcx
	callq	printf
	xorl	%edx, %edx
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	addq	$40, %rsp
	retq

