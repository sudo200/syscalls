.type getitimer, @function

.globl getitimer
getitimer:
  movq $36, %rax
  syscall
  ret

