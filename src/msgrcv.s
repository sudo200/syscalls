.type msgrcv, @function

.globl msgrcv
msgrcv:
  movq $70, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

