.type mmap, @function

.globl mmap
mmap:
  movq $9, %rax
  syscall
  ret

