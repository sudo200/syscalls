.type capget, @function

.globl capget
capget:
  movq $125, %rax
  syscall
  ret

