.type mq_timedsend, @function

.globl mq_timedsend
mq_timedsend:
  movq $242, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

