.type set_thread_area, @function

.globl set_thread_area
set_thread_area:
  movq $205, %rax
  syscall
  ret

