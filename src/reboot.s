.type reboot, @function

.globl reboot
reboot:
  movq $169, %rax
  syscall
  ret

