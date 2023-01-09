.type getcpu, @function

.globl getcpu
getcpu:
  movq $309, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

