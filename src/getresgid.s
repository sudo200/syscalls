.type getresgid, @function

.globl getresgid
getresgid:
  movq $120, %rax
  syscall
  ret

