.type truncate, @function

.globl truncate
truncate:
  movq $76, %rax
  syscall
  ret

