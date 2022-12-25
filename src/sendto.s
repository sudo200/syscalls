.type sendto, @function

.globl sendto
sendto:
  movq $44, %rax
  syscall
  ret

