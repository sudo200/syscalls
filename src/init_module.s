.type init_module, @function

.globl init_module
init_module:
  movq $175, %rax
  syscall
  ret

