.type kill, @function

.globl kill
kill:
  movq $62, %rax
  syscall
  ret

