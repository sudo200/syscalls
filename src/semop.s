.type semop, @function

.globl semop
semop:
  movq $65, %rax
  syscall
  ret

