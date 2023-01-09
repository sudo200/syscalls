.type setpriority, @function

.globl setpriority
setpriority:
  movq $141, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

