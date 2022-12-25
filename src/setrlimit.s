.type setrlimit, @function

.globl setrlimit
setrlimit:
  movq $160, %rax
  syscall
  ret

