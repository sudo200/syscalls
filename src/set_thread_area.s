.type set_thread_area, @function

.globl set_thread_area
set_thread_area:
  movq $205, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

