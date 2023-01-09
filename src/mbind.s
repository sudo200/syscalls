.type mbind, @function

.globl mbind
mbind:
  movq $237, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

