.type get_robust_list, @function

.globl get_robust_list
get_robust_list:
  movq $274, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

