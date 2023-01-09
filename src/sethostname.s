.type sethostname, @function

.globl sethostname
sethostname:
  movq $170, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

