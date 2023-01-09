.type move_pages, @function

.globl move_pages
move_pages:
  movq $279, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

