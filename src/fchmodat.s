.type fchmodat, @function

.globl fchmodat
fchmodat:
  movq $268, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

