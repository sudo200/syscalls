.type eventfd2, @function

.globl eventfd2
eventfd2:
  movq $290, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

