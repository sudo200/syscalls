.type setuid, @function

.globl setuid
setuid:
  movq $105, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

