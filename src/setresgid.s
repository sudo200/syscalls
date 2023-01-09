.type setresgid, @function

.globl setresgid
setresgid:
  movq $119, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

