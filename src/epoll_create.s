.type epoll_create, @function

.globl epoll_create
epoll_create:
  movq $213, %rax
  syscall
cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

