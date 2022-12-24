.type mprotect, @function

.globl mprotect
mprotect:
  movq $10, %rax
  syscall
  ret

