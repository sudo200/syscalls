.type adjtimex, @function

.globl adjtimex
adjtimex:
  movq $159, %rax
  syscall
  ret

