.type pselect6, @function

.globl pselect6
pselect6:
  movq $270, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

