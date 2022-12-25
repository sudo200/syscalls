.type fadvise64, @function

.globl fadvise64
fadvise64:
  movq $221, %rax
  syscall
  ret

