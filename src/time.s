.type time, @function

.globl time
time:
  movq $201, %rax
  syscall
  ret

