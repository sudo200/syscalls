.type io_submit, @function

.globl io_submit
io_submit:
  movq $209, %rax
  syscall
  ret

