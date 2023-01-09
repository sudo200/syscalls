.type rt_sigsuspend, @function

.globl rt_sigsuspend
rt_sigsuspend:
  movq $130, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

