.type sched_getparam, @function

.globl sched_getparam
sched_getparam:
  movq $143, %rax
  syscall
  ret

