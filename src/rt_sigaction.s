.type rt_sigaction, @function

.globl rt_sigaction
rt_sigaction:
  movq $13, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

