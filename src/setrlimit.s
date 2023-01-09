.type setrlimit, @function

.globl setrlimit
setrlimit:
  movq $160, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

