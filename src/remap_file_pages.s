.type remap_file_pages, @function

.globl remap_file_pages
remap_file_pages:
  movq $216, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

