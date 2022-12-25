.type sigaltstack, @function

.globl sigaltstack
sigaltstack:
  movq $131, %rax
  syscall
  ret

