.type symlinkat, @function

.globl symlinkat
symlinkat:
  movq $266, %rax
  syscall
  ret

