.type signalfd4, @function

.globl signalfd4
signalfd4:
  movq $289, %rax
  syscall
  ret

