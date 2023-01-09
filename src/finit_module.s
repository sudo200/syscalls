.type finit_module, @function

.globl finit_module
finit_module:
  movq $313, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

