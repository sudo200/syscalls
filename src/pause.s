.type pause, @function

.globl pause
pause:
  movq $34, %rax
  syscall
  ret

