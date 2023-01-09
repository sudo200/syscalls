.type recvmmsg, @function

.globl recvmmsg
recvmmsg:
  movq $299, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

