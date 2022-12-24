.type rt_sigreturn, @function

.globl rt_sigreturn
rt_sigreturn:
  movq $15, %rax
  syscall
  ret

