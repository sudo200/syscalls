.type uselib, @function

.globl uselib
uselib:
  movq $134, %rax
  syscall
  ret

