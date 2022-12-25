.type unlinkat, @function

.globl unlinkat
unlinkat:
  movq $263, %rax
  syscall
  ret

