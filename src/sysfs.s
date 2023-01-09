.type sysfs, @function

.globl sysfs
sysfs:
  movq $139, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

