.type rt_sigprocmask, @function

.globl rt_sigprocmask
rt_sigprocmask:
  movq $14, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

