.type inotify_init, @function

.globl inotify_init
inotify_init:
  movq $253, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

