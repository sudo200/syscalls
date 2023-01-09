
.type arch_prctl, @function

.globl arch_prctl
arch_prctl:
  movq $158, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret
