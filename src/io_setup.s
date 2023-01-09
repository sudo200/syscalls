.type io_setup, @function

.globl io_setup
io_setup:
  movq $206, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

