.type readahead, @function

.globl readahead
readahead:
  movq $187, %rax
  syscall
  ret

