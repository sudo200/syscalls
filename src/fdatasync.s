.type fdatasync, @function

.globl fdatasync
fdatasync:
  movq $75, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

