.type setxattr, @function

.globl setxattr
setxattr:
  movq $188, %rax
  syscall
  ret

