.type ftruncate, @function

.globl ftruncate
ftruncate:
  movq $77, %rax
  syscall
  ret

