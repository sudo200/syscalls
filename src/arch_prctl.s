
.type arch_prctl, @function

.globl arch_prctl
arch_prctl:
  movq $158, %rax
  syscall
  ret
