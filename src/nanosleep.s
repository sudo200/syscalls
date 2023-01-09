.type nanosleep, @function

.globl nanosleep
nanosleep:
  movq $35, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

