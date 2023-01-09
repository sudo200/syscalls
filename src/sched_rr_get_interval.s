.type sched_rr_get_interval, @function

.globl sched_rr_get_interval
sched_rr_get_interval:
  movq $148, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

