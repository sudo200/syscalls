.type splice, @function

.globl splice
splice:
  movq $275, %rax
  syscall
  ret

