.type sethostname, @function

.globl sethostname
sethostname:
  movq $170, %rax
  syscall
  ret

