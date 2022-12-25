.type mbind, @function

.globl mbind
mbind:
  movq $237, %rax
  syscall
  ret

