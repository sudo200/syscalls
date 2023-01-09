.type statfs, @function

.globl statfs
statfs:
  movq $137, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

