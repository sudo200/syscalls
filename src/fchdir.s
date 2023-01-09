.type fchdir, @function

.globl fchdir
fchdir:
  movq $81, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

