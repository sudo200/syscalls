.type listxattr, @function

.globl listxattr
listxattr:
  movq $194, %rax
  syscall
  ret

