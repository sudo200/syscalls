.type utimes, @function

.globl utimes
utimes:
  movq $235, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

