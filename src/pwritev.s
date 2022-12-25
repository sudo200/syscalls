.type pwritev, @function

.globl pwritev
pwritev:
  movq $296, %rax
  syscall
  ret

