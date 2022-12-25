.type creat, @function

.globl creat
globl:
  movq $85, %rax
  syscall
  ret

