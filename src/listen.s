.type listen, @function

.globl listen
listen:
  movq $50, %rax
  syscall
  ret

