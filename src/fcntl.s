.type fcntl, @function

.globl fcntl
fcntl:
  movq $72, %rax
  syscall
  ret

