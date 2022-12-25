.type setfsuid, @function

.globl setfsuid
setfsuid: 
  movq $122, %rax
  syscall
  ret

