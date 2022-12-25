.type shmctl, @function

.globl shmctl
shmctl:
  movq $31, %rax
  syscall
  ret

