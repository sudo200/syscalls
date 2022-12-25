.type chown, @function

.globl chown
chown:
  movq $92, %rax
  syscall
  ret

