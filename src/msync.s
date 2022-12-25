.type msync, @function

.globl msync
msync:
  movq $26, %rax
  syscall
  ret

