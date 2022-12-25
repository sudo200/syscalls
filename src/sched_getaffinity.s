.type sched_getaffinity, @function

.globl sched_getaffinity
sched_getaffinity:
  movq $204, %rax
  syscall
  ret

