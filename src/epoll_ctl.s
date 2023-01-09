.type epoll_ctl, @function

.globl epoll_ctl
epoll_ctl:
  movq $233, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

