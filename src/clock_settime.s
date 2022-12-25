.type clock_settime, @function

.globl clock_settime
clock_settime:
  movq $227, %rax
  syscall
  ret

