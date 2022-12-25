.type set_robust_list, @function

.globl set_robust_list
set_robust_list:
  movq $273, %rax
  syscall
  ret

