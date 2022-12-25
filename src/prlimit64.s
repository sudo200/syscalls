.type prlimit64, @function

.globl prlimit64
prlimit64:
  movq $302, %rax
  syscall
  ret

