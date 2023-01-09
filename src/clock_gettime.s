.type clock_gettime, @function

.globl clock_gettime
clock_gettime:
  movq $228, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

