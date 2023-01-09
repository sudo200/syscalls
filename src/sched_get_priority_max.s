.type sched_get_priority_max, @function

.globl sched_get_priority_max
sched_get_priority_max:
  movq $146, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

