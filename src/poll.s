.type poll, @function

.globl poll
poll:
  movq $7, %rax
  syscall
  ret

