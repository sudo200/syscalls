.type fstatfs, @function

.globl fstatfs
fstatfs:
  movq $138, %rax
  syscall
  ret

