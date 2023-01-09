.type getpriority, @function

.globl getpriority
getpriority:
  movq $140, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

