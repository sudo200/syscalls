.type sched_getscheduler, @function

.globl sched_getscheduler
sched_getscheduler: 
  movq $145, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

