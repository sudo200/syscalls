.type ioperm, @function

.globl ioperm
ioperm:
  movq $173, %rax
  syscall
  ret

