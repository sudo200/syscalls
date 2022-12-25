.type vmsplice, @function

.globl vmsplice
vmsplice:
  movq $278, %rax
  syscall
  ret

