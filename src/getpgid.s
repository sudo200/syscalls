.type getpgid, @function

.globl getpgid
getpgid:
  movq $121, %rax
  syscall
  ret

