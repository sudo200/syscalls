.type futex, @function

.globl futex
futex:
  movq $202, %rax
  syscall
  ret

