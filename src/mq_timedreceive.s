.type mq_timedreceive, @function

.globl mq_timedreceive
mq_timedreceive:
  movq $243, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

