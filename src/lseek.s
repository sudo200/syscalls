.type lseek, @function

.globl lseek
lseek:
  movq $8, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

