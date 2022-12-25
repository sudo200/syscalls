.type rt_sigtimedwait, @function

.globl rt_sigtimedwait
rt_sigtimedwait:
  movq $128, %rax
  syscall
  ret

