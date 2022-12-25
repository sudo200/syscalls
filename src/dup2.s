.type dup2, @function

.globl dup2
dup2:
  movq $33, %rax
  syscall
  ret

