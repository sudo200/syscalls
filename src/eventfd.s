.type eventfd, @function

.globl eventfd
eventfd:
  movq $284, %rax
  syscall
  ret

