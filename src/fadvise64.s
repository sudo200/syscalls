.type fadvise64, @function

.globl fadvise64
fadvise64:
  movq $221, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

