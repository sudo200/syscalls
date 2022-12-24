.type lstat, @function

.globl lstat
lstat:
  movq $6, %rax
  syscall
  ret

