.type ppoll, @function

.globl ppoll
ppoll:
  movq $271, %rax
  syscall
  ret

