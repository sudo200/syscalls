.type set_robust_list, @function

.globl set_robust_list
set_robust_list:
  movq $273, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

