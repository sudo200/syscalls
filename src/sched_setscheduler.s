.type sched_setscheduler, @function

.globl sched_setscheduler
sched_setscheduler:
  movq $144, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

