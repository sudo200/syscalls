.type msgget, @function

.globl msgget
msgget:
  movq $68, %rax
  syscall
  ret

