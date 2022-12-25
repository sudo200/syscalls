.type setitimer, @function

.globl setitimer
setitimer:
  movq $38, %rax
  syscall
  ret

