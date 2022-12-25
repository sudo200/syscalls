.type chroot, @function

.globl chroot
chroot:
  movq $161, %rax
  syscall
  ret

