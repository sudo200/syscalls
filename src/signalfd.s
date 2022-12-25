.type signalfd, @function

.globl signalfd
signalfd:
  movq $282, %rax
  syscall
  ret

