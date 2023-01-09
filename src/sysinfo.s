.type sysinfo, @function

.globl sysinfo
sysinfo:
  movq $99, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

