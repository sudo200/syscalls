.type clock_adjtime, @function

.globl clock_adjtime
clock_adjtime:
  movq $305, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

