.type setfsgid, @function

.globl setfsgid
setfsgid:
  movq $123, %rax
  syscall
  ret

