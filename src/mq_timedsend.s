.type mq_timedsend, @function

.globl mq_timedsend
mq_timedsend:
  movq $242, %rax
  syscall
  ret

