.type sendmmsg, @function

.globl sendmmsg
sendmmsg:
  movq $307, %rax
  syscall
  ret

