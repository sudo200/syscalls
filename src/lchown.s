.type lchown, @function

.globl lchown
lchown:
  movq $94, %rax
  syscall
  ret

