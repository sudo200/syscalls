.type syncfs, @function

.globl syncfs
syncfs:
  movq $306, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

