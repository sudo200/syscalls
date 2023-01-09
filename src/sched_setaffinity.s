.type sched_setaffinity, @function

.globl sched_setaffinity
sched_setaffinity:
  movq $203, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

