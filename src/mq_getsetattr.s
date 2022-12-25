.type mq_getsetattr, @function

.globl mq_getsetattr
mq_getsetattr:
  movq $245, %rax
  syscall
  ret

