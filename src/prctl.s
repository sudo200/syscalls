.type prctl, @function

.globl prctl
prctl:
  movq $157, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

