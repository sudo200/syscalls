.type getrlimit, @function

.globl getrlimit
getrlimit:
  movq $97, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

