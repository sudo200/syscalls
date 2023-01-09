.type prlimit64, @function

.globl prlimit64
prlimit64:
  movq $302, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

