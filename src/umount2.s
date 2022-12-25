.type umount2, @function

.globl umount2
umount2:
  movq $166, %rax
  syscall
  ret

