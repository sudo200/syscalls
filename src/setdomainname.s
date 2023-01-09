.type setdomainname, @function

.globl setdomainname
setdomainname:
  movq $171, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

