.type setsid, @function

.globl setsid
setsid:
  movq $112, %rax
  syscall
  ret

