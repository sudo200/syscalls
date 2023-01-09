.type init_module, @function

.globl init_module
init_module:
  movq $175, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

