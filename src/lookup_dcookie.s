.type lookup_dcookie, @function

.globl lookup_dcookie
lookup_dcookie:
  movq $212, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

