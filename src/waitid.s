.type waitid, @function

.globl waitid
waitid:
  movq $247, %rax
  syscall
  ret

