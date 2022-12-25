.type setns, @function

.globl setns
setns:
  movq $308, %rax
  syscall
  ret

