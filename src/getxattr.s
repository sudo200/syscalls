.type getxattr, @function

.globl getxattr
getxattr:
  movq $191, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

