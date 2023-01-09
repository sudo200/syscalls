.type semtimedop, @function

.globl semtimedop
semtimedop:
  movq $220, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

