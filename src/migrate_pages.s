.type migrate_pages, @function

.globl migrate_pages
migrate_pages:
  movq $256, %rax
  syscall
  ret

