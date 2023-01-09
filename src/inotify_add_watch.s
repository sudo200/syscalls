.type inotify_add_watch, @function

.globl inotify_add_watch
inotify_add_watch:
  movq $254, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

