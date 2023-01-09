.type getrusage, @function

.globl getrusage
getrusage:
  movq $98, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

