.type close, @function

.globl close
close:
  movq $3, %rax
  syscall
  ret

