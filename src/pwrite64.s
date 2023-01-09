.type pwrite64, @function

.globl pwrite64
pwrite64:
  movq $18, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

