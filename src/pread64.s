.type pread64, @function

.globl pread64
pread64:
  movq $17, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

