.type wait4, @function

.globl wait4
wait4:
  movq $61, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

