.type pread64, @function

.globl pread64
pread64:
  movq $17, %rax
  syscall
  ret

