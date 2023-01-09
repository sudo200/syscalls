.type sched_yield, @function

.globl sched_yield
sched_yield:
  movq $24, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

