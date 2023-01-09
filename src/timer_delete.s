.type timer_delete, @function

.globl timer_delete
timer_delete:
  movq $226, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

