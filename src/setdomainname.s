.type setdomainname, @function

.globl setdomainname
setdomainname:
  movq $171, %rax
  syscall
  ret

