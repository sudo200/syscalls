.type settimeofday, @function

.globl settimeofday
settimeofday:
  movq $164, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

