.type sendmsg, @function

.globl sendmsg
sendmsg:
  movq $46, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

