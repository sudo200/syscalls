.type rt_sigqueueinfo, @function

.globl rt_sigqueueinfo
rt_sigqueueinfo:
  movq $129, %rax
  syscall
  ret

