.type remap_file_pages, @function

.globl remap_file_pages
remap_file_pages:
  movq $216, %rax
  syscall
  ret

