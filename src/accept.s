.type accept, @function

.globl accept
accept:
  movq $43, %rax
  syscall
  ret

