.type gettid, @function

.globl gettid
gettid:
  movq $186, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

