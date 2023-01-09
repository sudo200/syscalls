.type rt_sigpending, @function

.globl rt_sigpending
rt_sigpending:
  movq $127, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

