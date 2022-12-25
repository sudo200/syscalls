.type prctl, @function

.globl prctl
prctl:
  movq $157, %rax
  syscall
  ret

