.type shmdt, @function

.globl shmdt
shmdt:
  movq $67, %rax
  syscall
  ret

