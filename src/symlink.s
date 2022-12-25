.type symlink, @function

.globl symlink
symlink:
  movq $88, %rax
  syscall
  ret

