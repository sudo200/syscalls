.type unlink, @function

.globl unlink
unlink:
  movq $87, %rax
  syscall
  ret

