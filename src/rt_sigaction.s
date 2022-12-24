.type rt_sigaction, @function

.globl rt_sigaction
rt_sigaction:
  movq $13, %rax
  syscall
  ret

