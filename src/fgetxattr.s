.type fgetxattr, @function

.globl fgetxattr
fgetxattr:
  movq $193, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

