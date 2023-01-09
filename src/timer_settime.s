.type timer_settime, @function

.globl timer_settime
timer_settime:
  movq $223, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

