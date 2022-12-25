.type mq_unlink, @function

.globl mq_unlink
mq_unlink:
  movq $241, %rax
  syscall
  ret

