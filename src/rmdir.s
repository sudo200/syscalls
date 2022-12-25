.type rmdir, @function

.globl rmdir
rmdir:
  movq $84, %rax
  syscall
  ret

