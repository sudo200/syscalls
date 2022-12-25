.type mremap, @function

.globl mremap
mremap:
  movq $25, %rax
  syscall
  ret

