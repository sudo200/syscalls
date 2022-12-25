.type msgctl, @function

.globl msgctl
msgctl:
  movq $71, %rax
  syscall
  ret

