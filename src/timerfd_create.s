.type timerfd_create, @function

.globl timerfd_create
timerfd_create:
  movq $283, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

