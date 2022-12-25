.type move_pages, @function

.globl move_pages
move_pages:
  movq $279, %rax
  syscall
  ret

