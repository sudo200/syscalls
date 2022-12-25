.type setpriority, @function

.globl setpriority
setpriority:
  movq $141, %rax
  syscall
  ret

