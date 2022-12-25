.type iopl, @function

.globl iopl
iopl:
  movq $172, %rax
  syscall
  ret

