.type timer_getoverrun, @function

.globl timer_getoverrun
timer_getoverrun:
  movq $225, %rax
  syscall
  ret

