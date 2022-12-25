.type getrusage, @function

.globl getrusage
getrusage:
  movq $98, %rax
  syscall
  ret

