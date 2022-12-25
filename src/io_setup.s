.type io_setup, @function

.globl io_setup
io_setup:
  movq $206, %rax
  syscall
  ret

