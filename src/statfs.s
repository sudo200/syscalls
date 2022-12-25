.type statfs, @function

.globl statfs
statfs:
  movq $137, %rax
  syscall
  ret

