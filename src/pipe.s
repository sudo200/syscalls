.type pipe, @function

.globl pipe
pipe:
  movq $22, %rax
  syscall
  ret

