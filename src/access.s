.type access, @function

.globl access
access:
  movq $21, %rax
  syscall
  ret

