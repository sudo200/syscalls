.type dup3, @function

.globl dup3
dup3:
  movq $292, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

