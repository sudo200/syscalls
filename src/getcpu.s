.type getcpu, @function

.globl getcpu
getcpu:
  movq $309, %rax
  syscall
  ret

