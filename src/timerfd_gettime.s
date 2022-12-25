.type timerfd_gettime, @function

.globl timerfd_gettime
timerfd_gettime:
  movq $287, %rax
  syscall
  ret

