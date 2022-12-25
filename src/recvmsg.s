.type recvmsg, @function

.globl recvmsg
recvmsg:
  movq $47, %rax
  syscall
  ret

