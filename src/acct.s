.type acct, @function

.globl acct
acct:
  movq $163, %rax
  syscall
  ret

