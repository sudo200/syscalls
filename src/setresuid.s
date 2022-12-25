.type setresuid, @function


.globl setresuid
setresuid:
  movq $117, %rax
  syscall
  ret

