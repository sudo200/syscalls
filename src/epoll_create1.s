.type epoll_create1, @function

.globl epoll_create1
epoll_create1:
  movq $291, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

