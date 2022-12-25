.type mq_open, @function

.globl mq_open
mq_open:
  movq $240, %rax
  syscall
  ret

