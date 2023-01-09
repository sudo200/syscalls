.type lsetxattr, @function

.globl lsetxattr
lsetxattr:
  movq $189, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

