.type renameat, @function

.globl renameat
renameat:
  movq $264, %rax
  syscall
  ret

