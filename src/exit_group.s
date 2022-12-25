.type exit_group, @function

.globl exit_group
exit_group:
  movq $231, %rax
  syscall
  ret

