.type epoll_create1, @function

.globl epoll_create1
epoll_create1:
  movq $291, %rax
  syscall
  ret

