.type exit, @function

.globl exit
exit:
  movq  $60, %rax # syscall number for exit
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

