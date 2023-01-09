.type umount2, @function

.globl umount2
umount2:
  movq $166, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

