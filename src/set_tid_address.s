.type set_tid_address, @function

.globl set_tid_address
set_tid_address:
  movq $218, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

