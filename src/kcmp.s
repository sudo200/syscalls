.type kcmp, @function

.globl kcmp
kcmp:
  movq $312, %rax
  syscall
  ret

