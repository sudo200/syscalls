.type openat, @function

.globl openat
openat:
  movq $257, %rax
  syscall
  ret

