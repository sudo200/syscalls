.type set_mempolicy, @function

.globl set_mempolicy
set_mempolicy:
  movq $238, %rax
  syscall
  ret

