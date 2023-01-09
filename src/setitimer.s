.type setitimer, @function

.globl setitimer
setitimer:
  movq $38, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

