.type shmdt, @function

.globl shmdt
shmdt:
  movq $67, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

