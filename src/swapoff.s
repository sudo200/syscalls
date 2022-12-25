.type swapoff, @function

.globl swapoff
swapoff:
  movq $168, %rax
  syscall
  ret

