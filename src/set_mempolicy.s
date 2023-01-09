.type set_mempolicy, @function

.globl set_mempolicy
set_mempolicy:
  movq $238, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

