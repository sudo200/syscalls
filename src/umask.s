.type umask, @function

.globl umask
umask:
  movq $95, %rax
  syscall
  ret

