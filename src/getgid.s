.type getgid, @function

.globl getgid
getgid:
  movq $104, %rax
  syscall
  ret

