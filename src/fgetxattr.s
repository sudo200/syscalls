.type fgetxattr, @function

.globl fgetxattr
fgetxattr:
  movq $193, %rax
  syscall
  ret

