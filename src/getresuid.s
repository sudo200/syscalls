.type getresuid, @function

.globl getresuid
getresuid:
  movq $118, %rax
  syscall
  ret

