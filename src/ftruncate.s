.type ftruncate, @function

.globl ftruncate
ftruncate:
  movq $77, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

