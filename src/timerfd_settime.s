.type timerfd_settime, @function

.globl timerfd_settime
timerfd_settime:
  movq $286, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

