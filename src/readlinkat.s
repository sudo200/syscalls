.type readlinkat, @function

.globl readlinkat
readlinkat:
  movq $267, %rax
  syscall
  ret

