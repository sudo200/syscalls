.type fremovexattr, @function

.globl fremovexattr
fremovexattr:
  movq $199, %rax
  syscall
  ret

