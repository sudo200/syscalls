.type shmctl, @function

.globl shmctl
shmctl:
  movq $31, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

