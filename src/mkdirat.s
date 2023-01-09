.type mkdirat, @function

.globl mkdirat
mkdirat:
  movq $258, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

