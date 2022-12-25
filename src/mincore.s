.type mincore, @function

.globl mincore
mincore:
  movq $27, %rax
  syscall
  ret

