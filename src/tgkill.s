.type tgkill, @function

.globl tgkill
tgkill:
  movq $234, %rax
  syscall
  ret

