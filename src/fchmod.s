.type fchmod, @function

.globl fchmod
fchmod:
  movq $91, %rax
  syscall
  ret

