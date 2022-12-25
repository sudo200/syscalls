.type select, @function

.globl select
select:
  movq $23, %rax
  syscall
  ret

