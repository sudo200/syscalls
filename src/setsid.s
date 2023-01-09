.type setsid, @function

.globl setsid
setsid:
  movq $112, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

