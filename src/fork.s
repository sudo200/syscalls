.type fork, @function

.globl fork
fork:
  movq $57, %rax
  syscall
  ret

