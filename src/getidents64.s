.type getindents64, @function

.globl getindents64
getindents64:
  movq $217, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

