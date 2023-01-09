.type munlock, @function

.globl munlock
munlock:
  movq $150, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

