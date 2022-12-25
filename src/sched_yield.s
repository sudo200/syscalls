.type sched_yield, @function

.globl sched_yield
sched_yield:
  movq $24, %rax
  syscall
  ret

