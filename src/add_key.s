.type add_key, @function

.globl add_key
add_key:
  movq $248, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

