.type shmget, @function

.globl shmget
shmget:
  movq $29, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

