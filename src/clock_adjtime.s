.type clock_adjtime, @function

.globl clock_adjtime
clock_adjtime:
  movq $305, %rax
  syscall
  ret

