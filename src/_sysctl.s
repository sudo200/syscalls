.type _sysctl, @function

.globl _sysctl
_sysctl:
  movq $156, %rax
  syscall
  ret

