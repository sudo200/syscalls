.type sched_get_priority_min, @function

.globl sched_get_priority_min
sched_get_priority_min:
  movq $147, %rax
  syscall
  ret

