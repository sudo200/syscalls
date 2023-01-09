.type clock_settime, @function

.globl clock_settime
clock_settime:
  movq $227, %rax
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  syscall
  ret

