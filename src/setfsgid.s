.type setfsgid, @function

.globl setfsgid
setfsgid:
  movq $123, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

