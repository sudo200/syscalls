.type mq_open, @function

.globl mq_open
mq_open:
  movq $240, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

