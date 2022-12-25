.type finit_module, @function

.globl finit_module
finit_module:
  movq $313, %rax
  syscall
  ret

