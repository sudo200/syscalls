.type getpeername, @function

.globl getpeername
getpeername:
  movq $52, %rax
  syscall
  ret

