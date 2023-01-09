.type getsockopt, @function

.globl getsockopt
getsockopt:
  movq $55, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

