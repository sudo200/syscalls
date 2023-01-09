.type clock_nanosleep, @function

.globl clock_nanosleep
clock_nanosleep:
  movq $230, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

