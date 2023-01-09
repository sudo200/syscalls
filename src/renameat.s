.type renameat, @function

.globl renameat
renameat:
  movq $264, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

