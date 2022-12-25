.type eventfd2, @function

.globl eventfd2
eventfd2:
  movq $290, %rax
  syscall
  ret

