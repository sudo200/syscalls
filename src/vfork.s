.type vfork, @function

.globl vfork
vfork:
  movq $58, %rax
  syscall
  ret

