.type setuid, @function

.globl setuid
setuid:
  movq $105, %rax
  syscall
  ret

