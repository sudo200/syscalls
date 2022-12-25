.type epoll_create, @function

.globl epoll_create
epoll_create:
  movq $213, %rax
  syscall
  ret

