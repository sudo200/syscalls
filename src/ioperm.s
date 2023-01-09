.type ioperm, @function

.globl ioperm
ioperm:
  movq $173, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

