.type writev, @function

.globl writev
writev:
  movq $20, %rax
  syscall
  ret

