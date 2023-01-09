.type migrate_pages, @function

.globl migrate_pages
migrate_pages:
  movq $256, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

