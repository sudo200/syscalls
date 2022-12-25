.type uname, @function

.globl uname
uname:
  movq $63, %rax
  syscall
  ret

