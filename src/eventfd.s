.type eventfd, @function

.globl eventfd
eventfd:
  movq $284, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

