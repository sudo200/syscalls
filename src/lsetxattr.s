.type lsetxattr, @function

.globl lsetxattr
lsetxattr:
  movq $189, %rax
  syscall
  ret

