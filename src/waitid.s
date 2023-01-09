.type waitid, @function

.globl waitid
waitid:
  movq $247, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

