.type unlink, @function

.globl unlink
unlink:
  movq $87, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

