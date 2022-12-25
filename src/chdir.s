.type chdir, @function

.globl chdir
chdir:
  movq $80, %rax
  syscall
  ret

