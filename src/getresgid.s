.type getresgid, @function

.globl getresgid
getresgid:
  movq $120, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

