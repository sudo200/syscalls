.type pivot_root, @function

.globl pivot_root
pivot_root:
  movq $155, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

