.type clock_getres, @function

.globl clock_getres
clock_getres:
  movq $229, %rax
  syscall
  ret

