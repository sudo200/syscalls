.type keyctl, @function

.globl keyctl
keyctl:
  movq $250, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

