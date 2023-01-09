.type mq_notify, @function

.globl mq_notify
mq_notify:
  movq $244, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

