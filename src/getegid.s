.type getegid, @function

.globl getegid
getegid:
  movq $108, %rax
  syscall
  ret

