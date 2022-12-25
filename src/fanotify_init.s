.type fanotify_init, @function

.globl fanotify_init
fanotify_init:
  movq $300, %rax
  syscall
  ret

