.type linkat, @function

.globl linkat
linkat:
  movq $265, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

