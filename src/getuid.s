.type getuid, @function

.globl getuid
getuid:
  movq $102, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

