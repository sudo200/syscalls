.type write, @function

.globl write
write:
  movq $1, %rax
  syscall
  ret

