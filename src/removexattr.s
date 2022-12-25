.type removexattr, @function

.globl removexattr
removexattr:
  movq $197, %rax
  syscall
  ret

