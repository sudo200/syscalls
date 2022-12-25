.type mq_notify, @function

.globl mq_notify
mq_notify:
  movq $244, %rax
  syscall
  ret

