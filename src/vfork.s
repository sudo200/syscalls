.type vfork, @function

.globl vfork
vfork:
  movq $58, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

