.type mlock, @function

.globl mlock
mlock:
  movq $149, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

