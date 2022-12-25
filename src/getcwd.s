.type getcwd, @function

.globl getcwd
getcwd:
  movq $79, %rax
  syscall
  ret

