.type fremovexattr, @function

.globl fremovexattr
fremovexattr:
  movq $199, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

