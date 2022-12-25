.type llistxattr, @function

.globl llistxattr
llistxattr:
  movq $195, %rax
  syscall
  ret

