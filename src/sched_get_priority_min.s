.type sched_get_priority_min, @function

.globl sched_get_priority_min
sched_get_priority_min:
  movq $147, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

