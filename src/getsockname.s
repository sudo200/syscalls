.type getsockname, @function

.globl getsockname
getsockname:
  movq $51, %rax
  syscall
  ret

