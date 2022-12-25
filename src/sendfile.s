.type sendfile, @function

.globl sendfile
sendfile:
  movq $40, %rax
  syscall
  ret

