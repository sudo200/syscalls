.type sync_file_range, @function

.globl sync_file_range
sync_file_range:
  movq $277, %rax
  syscall
  ret

