.type msgctl, @function

.globl msgctl
msgctl:
  movq $71, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

