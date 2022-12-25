.type mq_timedreceive, @function

.globl mq_timedreceive
mq_timedreceive:
  movq $243, %rax
  syscall
  ret

