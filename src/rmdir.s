.type rmdir, @function

.globl rmdir
rmdir:
  movq $84, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

