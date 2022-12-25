.type timerfd_create, @function

.globl timerfd_create
timerfd_create:
  movq $283, %rax
  syscall
  ret

