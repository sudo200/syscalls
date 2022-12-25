.type pipe2, @function

.globl pipe2
pipe2:
  movq $293, %rax
  syscall
  ret

