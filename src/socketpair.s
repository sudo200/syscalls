.type socketpair, @function

.globl socketpair
socketpair:
  movq $53, %rax
  syscall
  ret

