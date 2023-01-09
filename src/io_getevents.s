.type io_getevents, @function

.globl io_getevents
io_getevents:
  movq $208, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

