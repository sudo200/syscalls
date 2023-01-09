.type mremap, @function

.globl mremap
mremap:
  movq $25, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

