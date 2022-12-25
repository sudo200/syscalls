.type fdatasync, @function

.globl fdatasync
fdatasync:
  movq $75, %rax
  syscall
  ret

