.type ustat, @function

.globl ustat
ustat:
  movq $136, %rax
  syscall
  ret

