.type sched_setscheduler, @function

.globl sched_setscheduler
sched_setscheduler:
  movq $144, %rax
  syscall
  ret

