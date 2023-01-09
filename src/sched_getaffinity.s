.type sched_getaffinity, @function

.globl sched_getaffinity
sched_getaffinity:
  movq $204, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

