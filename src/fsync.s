.type fsync, @function

.globl fsync
fsync:
  movq $74, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

