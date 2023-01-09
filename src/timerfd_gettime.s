.type timerfd_gettime, @function

.globl timerfd_gettime
timerfd_gettime:
  movq $287, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

