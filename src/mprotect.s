.type mprotect, @function

.globl mprotect
mprotect:
  movq $10, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

