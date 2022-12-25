.type epoll_ctl, @function

.globl epoll_ctl
epoll_ctl:
  movq $233, %rax
  syscall
  ret

