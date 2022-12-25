.type quotactl, @function

.globl quotactl
quotactl:
  movq $179, %rax
  syscall
  ret

