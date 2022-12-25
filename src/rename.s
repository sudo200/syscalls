.type rename, @function

.globl rename
rename:
  movq $82, %rax
  syscall
  ret

