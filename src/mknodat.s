.type mknodat, @function

.globl mknodat
mknodat:
  movq $259, %rax
  syscall
  ret

