.type io_cancel, @function

.globl io_cancel
io_cancel:
  movq $210, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

