.type getindents64, @function

.globl getindents64
getindents64:
  movq $217, %rax
  syscall
  ret

