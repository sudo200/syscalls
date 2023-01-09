.type symlink, @function

.globl symlink
symlink:
  movq $88, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

