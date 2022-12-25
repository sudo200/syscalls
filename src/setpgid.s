.type setpgid, @function

.globl setpgid
setpgid:
  movq $109, %rax
  syscall
  ret

