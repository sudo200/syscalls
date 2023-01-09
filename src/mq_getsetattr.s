.type mq_getsetattr, @function

.globl mq_getsetattr
mq_getsetattr:
  movq $245, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

