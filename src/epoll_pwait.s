.type epoll_pwait, @function

.globl epoll_pwait
epoll_pwait:
  movq $281, %rax
  syscall
  ret

