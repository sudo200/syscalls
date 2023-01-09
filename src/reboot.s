.type reboot, @function

.globl reboot
reboot:
  movq $169, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

