.type sched_getparam, @function

.globl sched_getparam
sched_getparam:
  movq $143, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

