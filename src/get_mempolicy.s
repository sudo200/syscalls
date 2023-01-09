.type get_mempolicy, @function

.globl get_mempolicy
get_mempolicy:
  movq $239, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

