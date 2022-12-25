.type inotify_add_watch, @function

.globl inotify_add_watch
inotify_add_watch:
  movq $254, %rax
  syscall
  ret

