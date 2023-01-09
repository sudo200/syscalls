.type sendmmsg, @function

.globl sendmmsg
sendmmsg:
  movq $307, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

