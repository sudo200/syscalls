.type fchmod, @function

.globl fchmod
fchmod:
  movq $91, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

