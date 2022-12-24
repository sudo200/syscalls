.type rt_sigprocmask, @function

.globl rt_sigprocmask
rt_sigprocmask:
  movq $14, %rax
  syscall
  ret

