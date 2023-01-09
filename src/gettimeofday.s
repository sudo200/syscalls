.type gettimeofday, @function

.globl gettimeofday
gettimeofday:
  movq $96, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

