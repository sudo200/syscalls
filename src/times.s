.type times, @function

.globl times
times:
  movq $100, %rax
  syscall
  ret

