.type ioctl, @function

.globl ioctl
ioctl:
  movq $16, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

