.type pwrite64, @function

.globl pwrite64
pwrite64:
  movq $18, %rax
  syscall
  ret

