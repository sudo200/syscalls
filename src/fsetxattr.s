.type fsetxattr, @function

.globl fsetxattr
fsetxattr:
  movq $190, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

