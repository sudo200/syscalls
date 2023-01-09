.type getegid, @function

.globl getegid
getegid:
  movq $108, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

