.type syncfs, @function

.globl syncfs
syncfs:
  movq $306, %rax
  syscall
  ret

