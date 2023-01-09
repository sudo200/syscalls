.type chdir, @function

.globl chdir
chdir:
  movq $80, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

