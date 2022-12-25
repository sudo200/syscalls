.type mknod, @function

.globl mknod
mknod:
  movq $133, %rax
  syscall
  ret

