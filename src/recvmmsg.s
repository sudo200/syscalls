.type recvmmsg, @function

.globl recvmmsg
recvmmsg:
  movq $299, %rax
  syscall
  ret

