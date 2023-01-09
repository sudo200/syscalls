.type symlinkat, @function

.globl symlinkat
symlinkat:
  movq $266, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

