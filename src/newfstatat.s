.type newfstatat, @function

.globl newfstatat
newfstatat:
  movq $262, %rax
  syscall
  ret

