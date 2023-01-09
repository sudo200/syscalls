.type sendto, @function

.globl sendto
sendto:
  movq $44, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

