.type flock, @function

.globl flock
flock:
  movq $73, %rax
  syscall
  ret

