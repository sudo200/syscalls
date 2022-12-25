.type fanotify_mark, @function

.globl fanotify_mark
fanotify_mark:
  movq $301, %rax
  syscall
  ret

