.type getgroups, @function

.globl getgroups
getgroups:
  movq $115, %rax
  syscall
  ret

