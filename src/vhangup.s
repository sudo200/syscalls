.type vhangup, @function

.globl vhangup
vhangup:
  movq $153, %rax
  syscall
  ret

