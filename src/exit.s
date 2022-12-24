.type exit, @function

.globl exit
exit:
  movq  $60, %rax # syscall number for exit
  syscall
  ret

