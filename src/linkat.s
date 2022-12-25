.type linkat, @function

.globl linkat
linkat:
  movq $265, %rax
  syscall
  ret

