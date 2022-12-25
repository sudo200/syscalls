.type io_destroy, @function

.globl io_destroy
io_destroy:
  movq $207, %rax
  syscall
  ret

