.type io_getevents, @function

.globl io_getevents
io_getevents:
  movq $208, %rax
  syscall
  ret

