.type fsetxattr, @function

.globl fsetxattr
fsetxattr:
  movq $190, %rax
  syscall
  ret

