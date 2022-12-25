.type clock_gettime, @function

.globl clock_gettime
clock_gettime:
  movq $228, %rax
  syscall
  ret

