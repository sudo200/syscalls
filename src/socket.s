.type socket, @function

.globl socket
socket:
  movq $41, %rax
  syscall
  ret

