.type epoll_wait, @function

.globl epoll_wait
epoll_wait:
  movq $232, %rax
  syscall
  ret

