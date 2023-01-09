.type getitimer, @function

.globl getitimer
getitimer:
  movq $36, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

