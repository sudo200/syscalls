.type fchmodat, @function

.globl fchmodat
fchmodat:
  movq $268, %rax
  syscall
  ret

