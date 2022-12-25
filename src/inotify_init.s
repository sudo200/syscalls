.type inotify_init, @function

.globl inotify_init
inotify_init:
  movq $253, %rax
  syscall
  ret

