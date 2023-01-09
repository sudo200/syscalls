.type delete_module, @function

.globl delete_module
delete_module:
  movq $176, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

