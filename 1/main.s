	.file		"main.s"
	.section	.rodata
	
hello:
	.string	"Hello, World!\n"
	.text
	.globl	_start
	.type	_start, @function
	
_start:
	//;; syscall (write, stdout, "Hello, World!\n", 14)
	movl	$14, %edx
	movq	$hello, %rsi
	movl	$1, %edi
	movl	$1, %eax
	syscall

	//;; exit(0)
	movl    $0, %edi 
	movl   $60, %eax
	syscall
	
	.size	_start, .-_start
	.section	.note.GNU-stack,"",@progbits
