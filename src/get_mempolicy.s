.type get_mempolicy, @function

.globl get_mempolicy
get_mempolicy:
  movq $239, %rax
  syscall
  ret

