.type read, @function

.globl read
read:
  movq $0, %rax
  syscall
  ret

