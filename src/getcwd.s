.type getcwd, @function

.globl getcwd
getcwd:
  movq $79, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

