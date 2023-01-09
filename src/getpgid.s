.type getpgid, @function

.globl getpgid
getpgid:
  movq $121, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

