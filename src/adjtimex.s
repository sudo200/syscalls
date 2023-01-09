.type adjtimex, @function

.globl adjtimex
adjtimex:
  movq $159, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

