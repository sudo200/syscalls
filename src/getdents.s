.type getdents, @function

.globl getdents
getdents:
  movq $78, %rax
  syscall
  ret

