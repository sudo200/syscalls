.type fallocate, @function

.globl fallocate
fallocate:
  movq $285, %rax
  syscall
  ret

