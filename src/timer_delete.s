.type timer_delete, @function

.globl timer_delete
timer_delete:
  movq $226, %rax
  syscall
  ret

