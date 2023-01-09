.type lchown, @function

.globl lchown
lchown:
  movq $94, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

