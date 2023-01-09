.type getgid, @function

.globl getgid
getgid:
  movq $104, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

