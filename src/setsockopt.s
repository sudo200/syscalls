.type setsockopt, @function

.globl setsockopt
setsockopt:
  movq $54, %rax
  syscall
  ret

