.type fsync, @function

.globl fsync
fsync:
  movq $74, %rax
  syscall
  ret

