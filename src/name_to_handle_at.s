.type name_to_handle_at, @function

.globl name_to_handle_at
name_to_handle_at:
  movq $303, %rax
  syscall
  ret

