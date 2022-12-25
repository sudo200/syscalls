.type getppid, @function

.globl getppid
getppid:
  movq $110, %rax
  syscall
  ret

