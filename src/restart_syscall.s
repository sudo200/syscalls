.type restart_syscall, @function

.globl restart_syscall
restart_syscall:
  movq $219, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

