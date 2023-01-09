.type inotify_init1, @function

.globl inotify_init1
inotify_init1:
  movq $294, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

