.type setgroups, @function

.globl setgroups
setgroups:
  movq $116, %rax
  syscall
  ret

