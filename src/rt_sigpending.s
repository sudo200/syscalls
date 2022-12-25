.type rt_sigpending, @function

.globl rt_sigpending
rt_sigpending:
  movq $127, %rax
  syscall
  ret

