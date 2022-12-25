.type setresgid, @function

.globl setresgid
setresgid:
  movq $119, %rax
  syscall
  ret

