.type recvfrom, @function

.globl recvfrom
recvfrom:
  movq $45, %rax
  syscall
  ret

