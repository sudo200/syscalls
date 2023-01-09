.type chroot, @function

.globl chroot
chroot:
  movq $161, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

