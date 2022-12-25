.type getsid, @function

.globl getsid
getsid:
  movq $124, %rax
  syscall
  ret

