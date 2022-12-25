.type shmget, @function

.globl shmget
shmget:
  movq $29, %rax
  syscall
  ret

