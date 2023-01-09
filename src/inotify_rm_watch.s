.type inotify_rm_watch, @function

.globl inotify_rm_watch
inotify_rm_watch:
  movq $255, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

