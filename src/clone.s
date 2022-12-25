.type clone, @function

.globl clone
clone:
  movq $56, %rax
  syscall
  ret

