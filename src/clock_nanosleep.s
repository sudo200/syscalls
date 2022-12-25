.type clock_nanosleep, @function

.globl clock_nanosleep
clock_nanosleep:
  movq $230, %rax
  syscall
  ret

