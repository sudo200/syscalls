.type delete_module, @function

.globl delete_module
delete_module:
  movq $176, %rax
  syscall
  ret

