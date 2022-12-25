.type accept4, @function

.globl accept4
accept4:
  movq $288, %rax
  syscall
  ret

