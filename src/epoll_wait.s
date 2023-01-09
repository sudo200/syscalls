.type epoll_wait, @function

.globl epoll_wait
epoll_wait:
  movq $232, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

