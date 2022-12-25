.type getsockopt, @function

.globl getsockopt
getsockopt:
  movq $55, %rax
  syscall
  ret

