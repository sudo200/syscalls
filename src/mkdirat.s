.type mkdirat, @function

.globl mkdirat
mkdirat:
  movq $258, %rax
  syscall
  ret

