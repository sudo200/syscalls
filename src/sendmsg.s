.type sendmsg, @function

.globl sendmsg
sendmsg:
  movq $46, %rax
  syscall
  ret

