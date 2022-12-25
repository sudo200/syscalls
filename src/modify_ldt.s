.type modify_ldt, @function

.globl modify_ldt
modify_ldt:
  movq $154, %rax
  syscall
  ret

