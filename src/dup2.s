.type dup2, @function

.globl dup2
dup2:
  movq $33, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

