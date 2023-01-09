.type readlinkat, @function

.globl readlinkat
readlinkat:
  movq $267, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

