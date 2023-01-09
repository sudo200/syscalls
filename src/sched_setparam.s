.type sched_setparam, @function

.globl sched_setparam
sched_setparam:
  movq $142, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

