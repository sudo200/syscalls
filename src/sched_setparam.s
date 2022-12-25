.type sched_setparam, @function

.globl sched_setparam
sched_setparam:
  movq $142, %rax
  syscall
  ret

