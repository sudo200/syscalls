.type shmat, @function

.globl shmat
shmat:
  movq $30, %rax
  syscall
  ret

