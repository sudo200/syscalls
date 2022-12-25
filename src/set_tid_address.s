.type set_tid_address, @function

.globl set_tid_address
set_tid_address:
  movq $218, %rax
  syscall
  ret

