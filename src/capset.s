.type capset, @function

.globl capset
capset:
  movq $126, %rax
  syscall
  ret

