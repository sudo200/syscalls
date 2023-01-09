.type _sysctl, @function

.globl _sysctl
_sysctl:
  movq $156, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

