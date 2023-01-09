.type exit_group, @function

.globl exit_group
exit_group:
  movq $231, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

