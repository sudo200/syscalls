.type sched_getscheduler, @function

.globl sched_getscheduler
sched_getscheduler: 
  movq $145, %rax
  syscall
  ret

