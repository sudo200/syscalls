.type readv, @function

.globl readv
readv:
  movq $19, %rax
  syscall
  ret

