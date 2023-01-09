.type setsockopt, @function

.globl setsockopt
setsockopt:
  movq $54, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

