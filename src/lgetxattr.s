.type lgetxattr, @function

.globl lgetxattr
lgetxattr:
  movq $192, %rax
  syscall
  ret

