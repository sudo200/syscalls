.type settimeofday, @function

.globl settimeofday
settimeofday:
  movq $164, %rax
  syscall
  ret

