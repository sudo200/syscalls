.type ioctl, @function

.globl ioctl
ioctl:
  movq $16, %rax
  syscall
  ret

