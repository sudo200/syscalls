.type sync_file_range, @function

.globl sync_file_range
sync_file_range:
  movq $277, %rax
  syscall
  cmpq $0, %rdi
  jne .set_errno
  ret

.set_errno:
  movq %rdi, errno(%rip)
  ret

