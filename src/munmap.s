.type munmap, @function

.globl munmap
munmap:
  movq $11, %rax
  syscall
  ret

