.type accept4, @function

.globl accept4
accept4:
  movq $288, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

