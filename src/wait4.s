.type wait4, @function

.globl wait4
wait4:
  movq $61, %rax
  syscall
  ret

