.type utimesat, @function

.globl utimesat
utimesat:
  movq $280, %rax
  syscall
  ret

