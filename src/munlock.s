.type munlock, @function

.globl munlock
munlock:
  movq $150, %rax
  syscall
  ret

