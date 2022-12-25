.type semtimedop, @function

.globl semtimedop
semtimedop:
  movq $220, %rax
  syscall
  ret

