.type fstat, @function

.globl fstat
fstat:
  movq $5, %rax
  syscall
  ret

