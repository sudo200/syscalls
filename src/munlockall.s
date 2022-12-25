.type munlockall, @function

.globl munlockall
munlockall:
  movq $152, %rax
  syscall
  ret

