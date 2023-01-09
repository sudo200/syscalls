.type modify_ldt, @function

.globl modify_ldt
modify_ldt:
  movq $154, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

