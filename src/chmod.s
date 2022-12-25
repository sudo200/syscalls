.type chmod, @function

.globl chmod
chmod:
  movq $90, %rax
  syscall
  ret

