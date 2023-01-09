.type readahead, @function

.globl readahead
readahead:
  movq $187, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

