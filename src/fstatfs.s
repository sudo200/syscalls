.type fstatfs, @function

.globl fstatfs
fstatfs:
  movq $138, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

