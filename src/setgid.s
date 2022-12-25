.type setgid, @function

.globl setgid
setgid:
  movq $106, %rax
  syscall
  ret

