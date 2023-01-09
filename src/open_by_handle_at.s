.type open_by_handle_at, @function

.globl open_by_handle_at
open_by_handle_at:
  movq $304, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

