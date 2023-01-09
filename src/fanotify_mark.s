.type fanotify_mark, @function

.globl fanotify_mark
fanotify_mark:
  movq $301, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

