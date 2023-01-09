.type getsockname, @function

.globl getsockname
getsockname:
  movq $51, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

