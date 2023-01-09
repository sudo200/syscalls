.type setgroups, @function

.globl setgroups
setgroups:
  movq $116, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

