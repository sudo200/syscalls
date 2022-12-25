.type fchown, @function

.globl fchown
fchown:
  movq $93, %rax
  syscall
  ret

