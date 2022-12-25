.type dup3, @function

.globl dup3
dup3:
  movq $292, %rax
  syscall
  ret

