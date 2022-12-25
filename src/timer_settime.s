.type timer_settime, @function

.globl timer_settime
timer_settime:
  movq $223, %rax
  syscall
  ret

