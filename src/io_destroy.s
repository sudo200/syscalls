.type io_destroy, @function

.globl io_destroy
io_destroy:
  movq $207, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

