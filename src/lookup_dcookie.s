.type lookup_dcookie, @function

.globl lookup_dcookie
lookup_dcookie:
  movq $212, %rax
  syscall
  ret

