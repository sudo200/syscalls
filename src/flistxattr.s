.type flistxattr, @function

.globl flistxattr
flistxattr:
  movq $196, %rax
  syscall
cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

