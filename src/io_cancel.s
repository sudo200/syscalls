.type io_cancel, @function

.globl io_cancel
io_cancel:
  movq $210, %rax
  syscall
  ret

