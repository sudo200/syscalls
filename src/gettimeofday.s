.type gettimeofday, @function

.globl gettimeofday
gettimeofday:
  movq $96, %rax
  syscall
  ret

