.type timer_create, @function

.globl timer_create
timer_create:
  movq $222, %rax
  syscall
  ret

