.type alarm, @function

.globl alarm
alarm:
  movq $37, %rax
  syscall
  ret

