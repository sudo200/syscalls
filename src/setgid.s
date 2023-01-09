.type setgid, @function

.globl setgid
setgid:
  movq $106, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

