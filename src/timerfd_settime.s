.type timerfd_settime, @function

.globl timerfd_settime
timerfd_settime:
  movq $286, %rax
  syscall
  ret

