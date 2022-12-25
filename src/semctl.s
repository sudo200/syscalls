.type semctl, @function

.globl semctl
semctl:
  movq $66, %rax
  syscall
  ret

