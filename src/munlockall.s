.type munlockall, @function

.globl munlockall
munlockall:
  movq $152, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

