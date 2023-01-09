.type clock_getres, @function

.globl clock_getres
clock_getres:
  movq $229, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

