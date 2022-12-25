.type inotify_rm_watch, @function

.globl inotify_rm_watch
inotify_rm_watch:
  movq $255, %rax
  syscall
  ret

