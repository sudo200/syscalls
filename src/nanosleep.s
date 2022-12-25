.type nanosleep, @function

.globl nanosleep
nanosleep:
  movq $35, %rax
  syscall
  ret

