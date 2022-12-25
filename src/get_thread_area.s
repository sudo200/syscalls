.type get_thread_area, @function

.globl get_thread_area
get_thread_area:
  movq $211, %rax
  syscall
  ret

