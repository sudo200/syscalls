.type mlock, @function

.globl mlock
mlock:
  movq $149, %rax
  syscall
  ret

