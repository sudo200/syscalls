.type flistxattr, @function

.globl flistxattr
flistxattr:
  movq $196, %rax
  syscall
  ret

