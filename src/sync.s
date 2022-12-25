.type sync, @function

.globl sync
sync:
  movq $162, %rax
  syscall
  ret

