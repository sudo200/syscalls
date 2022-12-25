.type msgrcv, @function

.globl msgrcv
msgrcv:
  movq $70, %rax
  syscall
  ret

