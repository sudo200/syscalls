.type uselib, @function

.globl uselib
uselib:
  movq $134, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

