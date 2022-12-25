.type timer_gettime, @function

.globl timer_gettime
timer_gettime:
  movq $228, %rax
  syscall
  ret

