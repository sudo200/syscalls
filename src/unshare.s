.type unshare, @function

.globl unshare
unshare:
  movq $272, %rax
  syscall
  ret

