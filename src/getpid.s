.type getpid, @function

.globl getpid
getpid:
  movq $39, %rax
  syscall
  ret

