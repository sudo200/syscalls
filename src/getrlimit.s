.type getrlimit, @function

.globl getrlimit
getrlimit:
  movq $97, %rax
  syscall
  ret

