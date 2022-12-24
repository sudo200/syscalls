.type stat, @function

.globl stat
stat:
  movq $4, %rax
  syscall
  ret

