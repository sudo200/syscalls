.type ustat, @function

.globl ustat
ustat:
  movq $136, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

