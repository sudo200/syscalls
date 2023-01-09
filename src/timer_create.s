.type timer_create, @function

.globl timer_create
timer_create:
  movq $222, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

