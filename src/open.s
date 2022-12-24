.type open, @function

.globl open
open:
  movq $2, %rax
  syscall
  ret

