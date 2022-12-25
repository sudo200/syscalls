.type keyctl, @function

.globl keyctl
keyctl:
  movq $250, %rax
  syscall
  ret

