.type lremovexattr, @function

.globl lremovexattr
lremovexattr:
  movq $198, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

