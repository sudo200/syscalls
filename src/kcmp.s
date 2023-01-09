.type kcmp, @function

.globl kcmp
kcmp:
  movq $312, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

