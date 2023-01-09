.type vhangup, @function

.globl vhangup
vhangup:
  movq $153, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

