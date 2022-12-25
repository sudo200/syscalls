.type tkill, @function

.globl tkill
tkill:
  movq $200, %rax
  syscall
  ret

