.type setreuid, @function

.globl setreuid
setreuid:
  movq $113, %rax
  syscall
  ret

