.type connect, @function

.globl connect
connect:
  movq $42, %rax
  syscall
  ret

