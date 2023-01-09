.type fanotify_init, @function

.globl fanotify_init
fanotify_init:
  movq $300, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

