.type open_by_handle_at, @function

.globl open_by_handle_at
open_by_handle_at:
  movq $304, %rax
  syscall
  ret

