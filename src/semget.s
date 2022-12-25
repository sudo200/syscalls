.type semget, @function

.globl semget
semget:
  movq $64, %rax
  syscall
  ret

