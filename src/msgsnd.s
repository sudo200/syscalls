.type msgsnd, @function

.globl msgsnd
msgsnd:
  movq $69, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

