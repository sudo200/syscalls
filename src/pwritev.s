.type pwritev, @function

.globl pwritev
pwritev:
  movq $296, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

