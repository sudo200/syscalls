.type fchdir, @function

.globl fchdir
fchdir:
  movq $81, %rax
  syscall
  ret

