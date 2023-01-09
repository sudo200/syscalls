.type sigaltstack, @function

.globl sigaltstack
sigaltstack:
  movq $131, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

