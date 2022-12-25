.type link, @function

.globl link
link:
  movq $86, %rax
  syscall
  ret

