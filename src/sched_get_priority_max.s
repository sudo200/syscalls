.type sched_get_priority_max, @function

.globl sched_get_priority_max
sched_get_priority_max:
  movq $146, %rax
  syscall
  ret

