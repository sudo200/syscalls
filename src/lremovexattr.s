.type lremovexattr, @function

.globl lremovexattr
lremovexattr:
  movq $198, %rax
  syscall
  ret

