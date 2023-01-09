.type socketpair, @function

.globl socketpair
socketpair:
  movq $53, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

