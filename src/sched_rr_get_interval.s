.type sched_rr_get_interval, @function

.globl sched_rr_get_interval
sched_rr_get_interval:
  movq $148, %rax
  syscall
  ret

