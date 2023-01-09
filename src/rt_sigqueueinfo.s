.type rt_sigqueueinfo, @function

.globl rt_sigqueueinfo
rt_sigqueueinfo:
  movq $129, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

