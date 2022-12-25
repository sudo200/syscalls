.type getxattr, @function

.globl getxattr
getxattr:
  movq $191, %rax
  syscall
  ret

