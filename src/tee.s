.type tee, @function

.globl tee
tee:
  movq $276, %rax
  syscall
  ret

