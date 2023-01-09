.type getppid, @function

.globl getppid
getppid:
  movq $110, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

