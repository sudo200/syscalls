.type personality, @function

.globl personality
personality:
  movq $135, %rax
  syscall
  ret

