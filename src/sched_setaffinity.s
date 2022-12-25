.type sched_setaffinity, @function

.globl sched_setaffinity
sched_setaffinity:
  movq $203, %rax
  syscall
  ret

