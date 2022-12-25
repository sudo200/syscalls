.type execve, @function

.globl execve
execve:
  movq $59, %rax
  syscall
  ret

