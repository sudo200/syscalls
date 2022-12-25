.type madvise, @function

.globl madvise
madvise:
  movq $28, %rax
  syscall
  ret

