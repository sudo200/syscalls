.type faccessat, @function

.globl faccessat
faccessat:
  movq $269, %rax
  syscall
  ret

