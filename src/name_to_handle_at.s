.type name_to_handle_at, @function

.globl name_to_handle_at
name_to_handle_at:
  movq $303, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

