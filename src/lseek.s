.type lseek, @function

.globl lseek
lseek:
  movq $8, %rax
  syscall
  ret

