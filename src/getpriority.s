.type getpriority, @function

.globl getpriority
getpriority:
  movq $140, %rax
  syscall
  ret

