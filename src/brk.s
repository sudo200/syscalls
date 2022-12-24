.type brk, @function

.globl brk
brk:
  movq $12, %rax
  syscall
  ret

