.type mlockall, @function

.globl mlockall
mlockall:
  movq $151, %rax
  syscall
  ret

