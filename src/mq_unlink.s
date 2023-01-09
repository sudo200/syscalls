.type mq_unlink, @function

.globl mq_unlink
mq_unlink:
  movq $241, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

