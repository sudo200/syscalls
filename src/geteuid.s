.type geteuid, @function

.globl geteuid
geteuid:
  movq $107, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

