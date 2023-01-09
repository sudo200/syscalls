.type rt_sigreturn, @function

.globl rt_sigreturn
rt_sigreturn:
  movq $15, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

