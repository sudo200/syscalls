.type unlinkat, @function

.globl unlinkat
unlinkat:
  movq $263, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

