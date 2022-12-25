.type utimes, @function

.globl utimes
utimes:
  movq $235, %rax
  syscall
  ret

