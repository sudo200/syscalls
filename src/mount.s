.type mount, @function

.globl mount
mount:
  movq $165, %rax
  syscall
  ret

