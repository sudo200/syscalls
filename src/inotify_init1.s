.type inotify_init1, @function

.globl inotify_init1
inotify_init1:
  movq $294, %rax
  syscall
  ret

