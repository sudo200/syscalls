.type timer_getoverrun, @function

.globl timer_getoverrun
timer_getoverrun:
  movq $225, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

