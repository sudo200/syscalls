.type utime, @function

.globl utime
utime:
  movq $132, %rax
  syscall
  ret

