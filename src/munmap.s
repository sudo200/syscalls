.type munmap, @function

.globl munmap
munmap:
  movq $11, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

