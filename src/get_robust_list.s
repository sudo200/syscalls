.type get_robust_list, @function

.globl get_robust_list
get_robust_list:
  movq $274, %rax
  syscall
  ret

