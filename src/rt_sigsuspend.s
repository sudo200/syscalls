.type rt_sigsuspend, @function

.globl rt_sigsuspend
rt_sigsuspend:
  movq $130, %rax
  syscall
  ret

